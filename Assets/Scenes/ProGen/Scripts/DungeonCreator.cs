using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;


public class DungeonCreator : MonoBehaviour
{
   public int dungeonWidth, dungeonLength;
   public int roomWidthMin, roomLengthMin;
   public int maxIterations;
   public int corridorWidth;
   public Material material;
   [Range(0.0f, 0.3f)]
   public float roomBottomCornerModifier;
   [Range(0.7f, 1.0f)]
   public float roomTopCornerMidifier;
   [Range(0, 2)]
   public int roomOffset;
   public GameObject wallNoSupport, wallWithSupport;
   public GameObject XRPlayer;
   public GameObject xrOrigin;
   public GameObject Enemy;
   public GameObject goalPrefab;
   public GameObject TopRightRocks, TopLeftRocks, BottomRightRocks, BottomLeftRocks;
   public float spawnMargin = 1f; // Adjust the margin value as needed
   List<Vector3Int> possibleDoorVerticalPosition;
   List<Vector3Int> possibleDoorHorizontalPosition;
   List<Vector3Int> possibleWallHorizontalPosition;
   List<Vector3Int> possibleWallVerticalPosition;

   [HideInInspector]
   public bool regenerate = false;
   [HideInInspector]
   public int floorNumber;
    [HideInInspector]


   // Start is called before the first frame update
   void Start()
   {
       CreateDungeon();
       floorNumber = 1;
   }


   void Update(){
       if (regenerate && (floorNumber % 5 == 0)){
            MovePlayerToShop();
            regenerate = false;
       }else if (regenerate)
        {
            CreateDungeon();
            regenerate = false;
        }
   }


   public void CreateDungeon()
   {
       DestroyAllChildren();
       floorNumber++;
       DungeonMaker generator = new DungeonMaker(dungeonWidth, dungeonLength);
       var listOfRoomsAndHallways = generator.CalculateDungeon(maxIterations,
           roomWidthMin,
           roomLengthMin,
           roomBottomCornerModifier,
           roomTopCornerMidifier,
           roomOffset,
           corridorWidth);
       GameObject wallParent = new GameObject("WallParent");
       wallParent.transform.parent = transform;
       GameObject enemyParent = new GameObject("EnemyParent");
       enemyParent.transform.parent = transform;
       GameObject rockParent = new GameObject("rockParent");
       rockParent.transform.parent = transform;
       possibleDoorVerticalPosition = new List<Vector3Int>();
       possibleDoorHorizontalPosition = new List<Vector3Int>();
       possibleWallHorizontalPosition = new List<Vector3Int>();
       possibleWallVerticalPosition = new List<Vector3Int>();
       var listOfRooms = new List<Node>();
       for (int i = 0; i < listOfRoomsAndHallways.Count; i++)
       {
          
           if(listOfRoomsAndHallways[i].GetType() == typeof(RoomNode))
           {
               CreateMesh(listOfRoomsAndHallways[i].BottomLeftAreaCorner, listOfRoomsAndHallways[i].TopRightAreaCorner, false);
               SpawnEnemy(enemyParent, listOfRoomsAndHallways[i].BottomLeftAreaCorner, listOfRoomsAndHallways[i].TopRightAreaCorner);
               createRocks(rockParent, listOfRoomsAndHallways[i].BottomLeftAreaCorner, listOfRoomsAndHallways[i].TopRightAreaCorner);
               listOfRooms.Add(listOfRoomsAndHallways[i]);
           }
           else
           {
               CreateMesh(listOfRoomsAndHallways[i].BottomLeftAreaCorner, listOfRoomsAndHallways[i].TopRightAreaCorner, true);
           }


       }


       SpawnPlayerAndGoal(listOfRooms, enemyParent);
      
       CreateWalls(wallParent);
   }


   private void SpawnPlayerAndGoal(List<Node> listOfRooms, GameObject enemyParent)
   {
       Node startRoom = listOfRooms[UnityEngine.Random.Range(0, listOfRooms.Count)];
       Vector3 playerPosition = new Vector3();
       playerPosition.x = (startRoom.BottomLeftAreaCorner.x + startRoom.BottomRightAreaCorner.x) / 2;
       playerPosition.z = (startRoom.BottomLeftAreaCorner.y +  startRoom.TopLeftAreaCorner.y) / 2;
       XRPlayer.transform.position = playerPosition;
       xrOrigin.transform.position = playerPosition;


       // Find the room farthest from the player
       Node farthestRoom = null;
       float maxDistance = float.MinValue;
       foreach (Node room in listOfRooms)
       {
           Vector2 roomCenter = new Vector2((room.BottomLeftAreaCorner.x + room.BottomRightAreaCorner.x) / 2,
                                            (room.BottomLeftAreaCorner.y + room.TopLeftAreaCorner.y) / 2);
           float distance = Vector2.Distance(roomCenter, playerPosition);
           if (distance > maxDistance)
           {
               maxDistance = distance;
               farthestRoom = room;
           }
       }


       Vector3 goalPosition = new Vector3();
       goalPosition.x = (farthestRoom.BottomLeftAreaCorner.x + farthestRoom.BottomRightAreaCorner.x) / 2;
       goalPosition.z = (farthestRoom.BottomLeftAreaCorner.y + farthestRoom.TopLeftAreaCorner.y) / 2;
       GameObject goal = Instantiate(goalPrefab, goalPosition, Quaternion.identity);


       // Set the parent of the goal to DungeonGenerator object's transform
       goal.transform.parent = transform;


        // Destroy enemies within a certain radius of player and goal
        DestroyEnemiesWithinRadius(playerPosition, enemyParent);
        DestroyEnemiesWithinRadius(goalPosition, enemyParent);

    }

    private void DestroyEnemiesWithinRadius(Vector3 position, GameObject enemyParent)
    {
        float destroyRadius = 20f; // Adjust this radius as needed
        Collider[] colliders = Physics.OverlapSphere(position, destroyRadius);
        foreach (Collider collider in colliders)
        {
            if (collider.gameObject.CompareTag("Enemy"))
            {
                Destroy(collider.gameObject);
            }
        }
    }

    public void MovePlayerToShop()
    {
        floorNumber++;
        Vector3 playerPosition = new Vector3(-15F, 0F, 5F);
        XRPlayer.transform.position = playerPosition;
        xrOrigin.transform.position = playerPosition;
    }


    private void createRocks(GameObject rockParent, Vector2 bottomLeftCorner, Vector2 topRightCorner)
   {
       // Adjust the position of corners by spawnMargin
       Vector3 bottomLeftV = new Vector3(bottomLeftCorner.x + spawnMargin, 0, bottomLeftCorner.y + spawnMargin);
       Vector3 bottomRightV = new Vector3(topRightCorner.x - spawnMargin, 0, bottomLeftCorner.y + spawnMargin);
       Vector3 topLeftV = new Vector3(bottomLeftCorner.x + spawnMargin, 0, topRightCorner.y - spawnMargin);
       Vector3 topRightV = new Vector3(topRightCorner.x - spawnMargin, 0, topRightCorner.y - spawnMargin);


       // Instantiate rocks at the adjusted positions
       Instantiate(BottomLeftRocks, bottomLeftV, Quaternion.identity, rockParent.transform);
       Instantiate(TopLeftRocks, topLeftV, Quaternion.identity, rockParent.transform);
       Instantiate(BottomRightRocks, bottomRightV, Quaternion.identity, rockParent.transform);
       Instantiate(TopRightRocks, topRightV, Quaternion.identity, rockParent.transform);


   }


   private void SpawnEnemy(GameObject enemyParent, Vector2 bottomLeftCorner, Vector2 topRightCorner)
   {
       // Convert corner positions to Vector3
       Vector3 bottomLeftV = new Vector3(bottomLeftCorner.x + spawnMargin, 0, bottomLeftCorner.y + spawnMargin);
       Vector3 topRightV = new Vector3(topRightCorner.x - spawnMargin, 0, topRightCorner.y - spawnMargin);


       // Generate random points within the bounds of the room with margin
       int numberOfEnemies = UnityEngine.Random.Range(1, 5); // Adjust as needed
      
       for (int i = 0; i < numberOfEnemies; i++)
       {
           float randomX = UnityEngine.Random.Range(bottomLeftCorner.x + spawnMargin, topRightCorner.x - spawnMargin);
           float randomZ = UnityEngine.Random.Range(bottomLeftCorner.y + spawnMargin, topRightCorner.y - spawnMargin);
           Vector3 spawnPosition = new Vector3(randomX, 0, randomZ);


           // Instantiate enemy at the random position
           GameObject newEnemy = Instantiate(Enemy, spawnPosition, Quaternion.identity, enemyParent.transform);


          
       }
   }


   private void CreateWalls(GameObject wallParent)
   {
       foreach (var wallPosition in possibleWallHorizontalPosition)
       {
           Vector3 pos = wallPosition;


           int random = UnityEngine.Random.Range(0, 10);
           if(random > 7)
           {
               CreateWall(wallParent, pos, wallWithSupport, true);
           }
           else
           {
               CreateWall(wallParent, pos, wallNoSupport, true);
           }
          
       }
       foreach (var wallPosition in possibleWallVerticalPosition)
       {
           Vector3 pos = wallPosition;


           int random = UnityEngine.Random.Range(0, 10);
           if (random > 7)
           {
               CreateWall(wallParent, pos, wallWithSupport, false);
           }
           else
           {
               CreateWall(wallParent, pos, wallNoSupport, false);
           }
       }
   }


   private void CreateWall(GameObject wallParent, Vector3 wallPosition, GameObject wallPrefab, bool isHorizontal)
   {
       if(isHorizontal)
       {
           Instantiate(wallPrefab, wallPosition, Quaternion.Euler(0, 90, 0), wallParent.transform);
       }
       else
       {
           Instantiate(wallPrefab, wallPosition, Quaternion.identity, wallParent.transform);
       }
      
   }


   private void CreateMesh(Vector2 bottomLeftCorner, Vector2 topRightCorner, bool isHallway)
   {
       Vector3 bottomLeftV = new Vector3(bottomLeftCorner.x, 0, bottomLeftCorner.y);
       Vector3 bottomRightV = new Vector3(topRightCorner.x, 0, bottomLeftCorner.y);
       Vector3 topLeftV = new Vector3(bottomLeftCorner.x, 0, topRightCorner.y);
       Vector3 topRightV = new Vector3(topRightCorner.x, 0, topRightCorner.y);


       Vector3[] vertices = new Vector3[]
       {
           topLeftV,
           topRightV,
           bottomLeftV,
           bottomRightV
       };


       Vector2[] uvs = new Vector2[vertices.Length];
       for (int i = 0; i < uvs.Length; i++)
       {
           uvs[i] = new Vector2(vertices[i].x, vertices[i].z);
       }


       int[] triangles = new int[]
       {
           0,
           1,
           2,
           2,
           1,
           3
       };
       Mesh mesh = new Mesh();
       mesh.vertices = vertices;
       mesh.uv = uvs;
       mesh.triangles = triangles;


       GameObject dungeonFloor = new GameObject("Mesh" + bottomLeftCorner, typeof(MeshFilter), typeof(MeshRenderer));


       dungeonFloor.transform.position = Vector3.zero;
       dungeonFloor.transform.localScale = Vector3.one;
       dungeonFloor.GetComponent<MeshFilter>().mesh = mesh;
       dungeonFloor.GetComponent<MeshRenderer>().material = material;
       dungeonFloor.transform.parent = transform;


       // Check if it's a hallway and add a collider accordingly
       if (isHallway)
       {
           // Add BoxCollider component
           BoxCollider collider = dungeonFloor.AddComponent<BoxCollider>();


           // Set collider size and position
           Vector3 colliderSize = new Vector3(topRightCorner.x - bottomLeftCorner.x, 0.1f, topRightCorner.y - bottomLeftCorner.y);
           Vector3 colliderCenter = new Vector3((bottomLeftCorner.x + topRightCorner.x) / 2f, 0.05f, (bottomLeftCorner.y + topRightCorner.y) / 2f);


           collider.size = colliderSize;
           collider.center = colliderCenter;


           collider.isTrigger = true;


           dungeonFloor.gameObject.tag = "Hallway";
       }


       for (int row = (int)bottomLeftV.x; row < (int)bottomRightV.x; row++)
       {
           var wallPosition = new Vector3(row, 0, bottomLeftV.z);
           AddWallPositionToList(wallPosition, possibleWallHorizontalPosition, possibleDoorHorizontalPosition);
       }
       for (int row = (int)topLeftV.x; row < (int)topRightCorner.x; row++)
       {
           var wallPosition = new Vector3(row, 0, topRightV.z);
           AddWallPositionToList(wallPosition, possibleWallHorizontalPosition, possibleDoorHorizontalPosition);
       }
       for (int col = (int)bottomLeftV.z; col < (int)topLeftV.z; col++)
       {
           var wallPosition = new Vector3(bottomLeftV.x, 0, col);
           AddWallPositionToList(wallPosition, possibleWallVerticalPosition, possibleDoorVerticalPosition);
       }
       for (int col = (int)bottomRightV.z; col < (int)topRightV.z; col++)
       {
           var wallPosition = new Vector3(bottomRightV.x, 0, col);
           AddWallPositionToList(wallPosition, possibleWallVerticalPosition, possibleDoorVerticalPosition);
       }
   }


   private void AddWallPositionToList(Vector3 wallPosition, List<Vector3Int> wallList, List<Vector3Int> doorList)
   {
       Vector3Int point = Vector3Int.CeilToInt(wallPosition);
       if (wallList.Contains(point))
       {
           doorList.Add(point);
           wallList.Remove(point);
       }
       else
       {
           wallList.Add(point);
       }
   }


   private void DestroyAllChildren()
   {
       while (transform.childCount != 0)
       {
           foreach (Transform item in transform)
           {
               DestroyImmediate(item.gameObject);
           }
       }
   }
}
