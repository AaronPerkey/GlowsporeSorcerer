using System.Collections.Concurrent;
using UnityEngine;

public class DungeonGenerator : MonoBehaviour
{
    public int dungeonWidth = 100;
    public int dungeonHeight = 100;
    public int minPartitionSize = 20;
    public Partition rootPartition;

    void Start()
    {
        GenerateDungeon();
    }

    void GenerateDungeon()
    {
        rootPartition = new Partition(new Rect(0, 0, dungeonWidth, dungeonHeight));
        SplitPartition(rootPartition);
        GenerateRooms(rootPartition);
    }

    void SplitPartition(Partition partition)
    {
        if (partition == null) return;
        if (partition.rect.width > dungeonWidth || partition.rect.height > dungeonHeight) return;

        if (partition.IsLeaf())
        {
            // If the partition is too large, or 75% chance, split it
            if (partition.rect.width > minPartitionSize * 2 || partition.rect.height > minPartitionSize * 2 || Random.Range(0.0f, 1.0f) > 0.25)
            {
                if (partition.Split(minPartitionSize, Mathf.Min(dungeonWidth, dungeonHeight)))
                {
                    SplitPartition(partition.leftChild);
                    SplitPartition(partition.rightChild);
                }
            }
        }
    }

    void CreateRoom(Partition partition)
    {
        // Define minimum and maximum room dimensions
        int minRoomWidth = (int)Mathf.Max(8, (int)(partition.rect.width / 2)); // Increase minimum room width
        int maxRoomWidth = (int)Mathf.Min(partition.rect.width - 4, (int)(partition.rect.width / 1.5f)); // Adjust maximum room width
        int minRoomHeight = (int)Mathf.Max(8, (int)(partition.rect.height / 2)); // Increase minimum room height
        int maxRoomHeight = (int)Mathf.Min(partition.rect.height - 4, (int)(partition.rect.height / 1.5f)); // Adjust maximum room height

        // Randomly generate room dimensions within the defined range
        int roomWidth = (int)Random.Range(minRoomWidth, maxRoomWidth); // Explicitly cast to int
        int roomHeight = (int)Random.Range(minRoomHeight, maxRoomHeight); // Explicitly cast to int

        // Randomly position the room within the partition
        int roomX = Mathf.RoundToInt(partition.rect.x + Random.Range(1, partition.rect.width - roomWidth - 1));
        int roomY = Mathf.RoundToInt(partition.rect.y + Random.Range(1, partition.rect.height - roomHeight - 1));

        // Create room
        GameObject room = GameObject.CreatePrimitive(PrimitiveType.Cube);
        room.transform.position = new Vector3(roomX + roomWidth / 2, 0, roomY + roomHeight / 2);
        room.transform.localScale = new Vector3(roomWidth, 1, roomHeight);
    }





    void GenerateRooms(Partition partition)
    {
        if (partition == null) return;

        if (partition.IsLeaf())
        {
            // This is a leaf, so it can be a room
            CreateRoom(partition);
        }
        else
        {
            // Not a leaf, keep splitting
            GenerateRooms(partition.leftChild);
            GenerateRooms(partition.rightChild);
        }
    }

    void CreateCorridor(Partition partitionA, Partition partitionB)
    {
        Vector3 pointA = new Vector3(partitionA.rect.x + partitionA.rect.width / 2, 0, partitionA.rect.y + partitionA.rect.height / 2);
        Vector3 pointB = new Vector3(partitionB.rect.x + partitionB.rect.width / 2, 0, partitionB.rect.y + partitionB.rect.height / 2);

        // Create corridor in between
        GameObject corridor = GameObject.CreatePrimitive(PrimitiveType.Cube);
        Vector3 position = (pointA + pointB) / 2;
        corridor.transform.position = position;

        // Use the distance between points to set the scale
        corridor.transform.localScale = new Vector3(Vector3.Distance(pointA, pointB), 1, 1); // Assuming a narrow corridor width of 1 unit

        // Rotate the corridor to point between the two rooms
        corridor.transform.LookAt(pointB);
    }


}


public class Partition
{
    public Rect rect;
    public Partition leftChild;
    public Partition rightChild;

    public Partition(Rect _rect)
    {
        rect = _rect;
    }

    public bool IsLeaf() => leftChild == null && rightChild == null;

    // Split the partition into two children
    public bool Split(int minSize, int maxSize)
    {
        if (!IsLeaf()) return false; // Already split

        // Determine direction of split
        // If the width is more than 25% wider than height, we split vertically
        // If the height is more than 25% taller than width, we split horizontally
        // Otherwise, we choose the direction randomly
        bool splitH;
        if (rect.width / rect.height >= 1.25)
        {
            splitH = false;
        }
        else if (rect.height / rect.width >= 1.25)
        {
            splitH = true;
        }
        else
        {
            splitH = Random.Range(0.0f, 1.0f) > 0.5;
        }

        // Define the maximum size of the left/top child
        int max = (splitH ? (int)rect.height : (int)rect.width) - minSize;
        if (max <= minSize) return false; // Area too small to split

        int split = Random.Range(minSize, max);

        // Create children based on the direction of the split
        if (splitH)
        {
            leftChild = new Partition(new Rect(rect.x, rect.y, rect.width, split));
            rightChild = new Partition(new Rect(rect.x, rect.y + split, rect.width, rect.height - split));
        }
        else
        {
            leftChild = new Partition(new Rect(rect.x, rect.y, split, rect.height));
            rightChild = new Partition(new Rect(rect.x + split, rect.y, rect.width - split, rect.height));
        }

        return true;
    }
}


