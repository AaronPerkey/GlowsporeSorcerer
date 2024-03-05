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
        rootPartition = ScriptableObject.CreateInstance<Partition>();
        rootPartition.Initialize(new Rect(0, 0, dungeonWidth, dungeonHeight), "RootPartition");
        SplitPartition(rootPartition);
        GenerateRooms(rootPartition);
        ConnectRooms(rootPartition);

        // Visualize the partition tree
        Debug.Log("Partition Tree Visualization:");
        VisualizePartitionTree(rootPartition, 0);
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
        room.name = "Room_" + room.GetInstanceID(); // Assign a unique name to the room
        room.transform.position = new Vector3(roomX + roomWidth / 2, 0, roomY + roomHeight / 2);
        room.transform.localScale = new Vector3(roomWidth, 1, roomHeight);
    }

    void CreatePartitionCube(Partition partition)
    {
        // Create a cube to represent the partition
        GameObject partitionCube = GameObject.CreatePrimitive(PrimitiveType.Cube);

        // Disable the mesh renderer to make the cube invisible
        Renderer renderer = partitionCube.GetComponent<Renderer>();
        renderer.enabled = false;

        // Add a collider to the cube
        Collider collider = partitionCube.AddComponent<BoxCollider>();

        // Set the collider as a trigger so it doesn't physically interact with other objects
        collider.isTrigger = true;

        // Position the cube at the center of the partition and scale it to match the partition's size
        partitionCube.transform.position = new Vector3(partition.rect.x + partition.rect.width / 2, 0, partition.rect.y + partition.rect.height / 2);
        partitionCube.transform.localScale = new Vector3(partition.rect.width, 1, partition.rect.height);

    }



    void GenerateRooms(Partition partition)
    {
        if (partition == null) return;

        if (partition.IsLeaf())
        {
            // This is a leaf, so it can be a room
            CreateRoom(partition);
            CreatePartitionCube(partition);
        }
        else
        {
            // Not a leaf, keep splitting
            GenerateRooms(partition.leftChild);
            GenerateRooms(partition.rightChild);
        }
    }

    void ConnectRooms(Partition partition)
    {
        if (partition == null || partition.IsLeaf()) return;

        if (!partition.leftChild.IsLeaf() && !partition.rightChild.IsLeaf())
        {
            // Both children are non-leaf partitions
            ConnectRooms(partition.leftChild);
            ConnectRooms(partition.rightChild);
        }
        else if (!partition.leftChild.IsLeaf() && partition.rightChild.IsLeaf())
        {
            // Left child is a non-leaf partition and right child is a leaf partition
            ConnectRooms(partition.leftChild);
            CreateCorridor(partition.leftChild, partition.rightChild);
        }
        else if (partition.leftChild.IsLeaf() && !partition.rightChild.IsLeaf())
        {
            // Left child is a leaf partition and right child is a non-leaf partition
            ConnectRooms(partition.rightChild);
            CreateCorridor(partition.rightChild, partition.leftChild);
        }
        else if (partition.leftChild.IsLeaf() && partition.rightChild.IsLeaf())
        {
            // Both children are leaf partitions
            CreateCorridor(partition.leftChild, partition.rightChild);
        }
    }

    void VisualizePartitionTree(Partition partition, int depth)
    {
        if (partition == null) return;

        // Print information about the current partition
        string indentation = new string(' ', depth * 4);
        Debug.Log(indentation + "Partition: " + partition.name + " - Rect: " + partition.rect);

        // Visualize left child
        VisualizePartitionTree(partition.leftChild, depth + 1);

        // Visualize right child
        VisualizePartitionTree(partition.rightChild, depth + 1);
    }


    void CreateCorridor(Partition partitionA, Partition partitionB)
    {
        // Find center points of each room
        Vector3 pointA = new Vector3(partitionA.rect.x + partitionA.rect.width / 2, 0, partitionA.rect.y + partitionA.rect.height / 2);
        Vector3 pointB = new Vector3(partitionB.rect.x + partitionB.rect.width / 2, 0, partitionB.rect.y + partitionB.rect.height / 2);

        // Create corridor between the center points
        GameObject corridor = GameObject.CreatePrimitive(PrimitiveType.Cube);
        Vector3 position = (pointA + pointB) / 2;
        corridor.transform.position = position;
        corridor.transform.localScale = new Vector3(Vector3.Distance(pointA, pointB), 1, 1); // Adjust corridor width
    }


}

public class Partition : ScriptableObject
{
    public Rect rect;
    public Partition leftChild;
    public Partition rightChild;
    public string Name; // Name of the partition

    public void Initialize(Rect _rect, string _name)
    {
        rect = _rect;
        name = _name;
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
            leftChild = ScriptableObject.CreateInstance<Partition>();
            leftChild.Initialize(new Rect(rect.x, rect.y, rect.width, split), "LeftChild_" + GetInstanceID());

            rightChild = ScriptableObject.CreateInstance<Partition>();
            rightChild.Initialize(new Rect(rect.x, rect.y + split, rect.width, rect.height - split), "RightChild_" + GetInstanceID());
        }
        else
        {
            leftChild = ScriptableObject.CreateInstance<Partition>();
            leftChild.Initialize(new Rect(rect.x, rect.y, split, rect.height), "LeftChild_" + GetInstanceID());

            rightChild = ScriptableObject.CreateInstance<Partition>();
            rightChild.Initialize(new Rect(rect.x + split, rect.y, rect.width - split, rect.height), "RightChild_" + GetInstanceID());
        }


        return true;
    }
}


