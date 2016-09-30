using UnityEngine;
using System.Collections;

public class Map : MonoBehaviour {
	int[,] Grid;
	public Material[] Crazytiles,RealTiles;
	public string MapName;
	bool blnCrazy=false;
	int BlockSize=1;
	int XBlocks=24,YBlocks=10;
	public GameObject Tiles;
	public void NewMap(){
		for (int i=0; i<XBlocks; i++) {
			for (int j=0; j<YBlocks; j++) {
				Grid[i,j]=0;
			}
		}


	}

	public void OpenMap(string FName){
		TextAsset tass = Resources.Load(FName) as TextAsset;
		string txt = tass.text.Replace(" ","\n");
		print (txt);
		string[] wordArray = txt.Split('\n');

		bool Worked = false;

		Worked = int.TryParse (wordArray [0], out XBlocks);
		Worked = int.TryParse (wordArray [1], out YBlocks);
		int Counter = 2;
		Grid = new int[XBlocks,YBlocks];
		for (int j=0; j<YBlocks; j++) {
			for (int i=0; i<XBlocks; i++) {
				Worked = int.TryParse (wordArray [Counter], out Grid[i,j]);
				Counter++;
			}
		}



	}
	public void DrawMap(){
		string txt = "";
		for (int i=0; i<XBlocks;i++) {
			for (int j=0; j<YBlocks; j++) {
				txt+=Grid[i,j]+" ";
				spawn_block(i*BlockSize,j*BlockSize,Grid[i,j]);
				print ("created block");
			}
			txt+="\n";
		}
		print (txt);
	}

	void spawn_block(float x, float y, int Fill){
		Vector3 offset = transform.position;//new Vector3 (-15f, -5f, 2);
		GameObject block=Instantiate(Tiles,new Vector3(0,0,0),Quaternion.identity) as GameObject;
		block.transform.Translate (new Vector3(x, y, 0)+offset);

		MeshRenderer mesh=block.GetComponent<MeshRenderer>();
		//print (Fill);
		if(blnCrazy){
			mesh.sharedMaterial = Crazytiles [Fill];
		}else{
			mesh.sharedMaterial=RealTiles[Fill];
		}
		block.tag=MapName;
		block.transform.parent = this.transform;
		if(Fill==0 || Fill==3){
			block.GetComponent<BoxCollider2D>().enabled=false;
		}
		else if(Fill == 2){
			block.GetComponent<BoxCollider2D>().isTrigger = true;
		}
	}

	// Use this for initialization
	void Start () {
		Grid = new int[XBlocks,YBlocks];
		print ("Made Grid");
		OpenMap(MapName);
		print ("Open Map");
		//NewMap ();
		//print ("New Map");
		DrawMap ();
		print ("Drawing Map");
	}

	public void WorldFlip(){
		blnCrazy = !blnCrazy;
		GameObject[] blocks = GameObject.FindGameObjectsWithTag (MapName);
		for (int i=0; i<blocks.Length; i++) {
			MeshRenderer mesh=blocks[i].GetComponent<MeshRenderer>();
			int Fill=0;
			if(blnCrazy){
				for(int j=0;j<RealTiles.Length;j++){
					if(mesh.sharedMaterial==RealTiles[j]){Fill=j;}
				}
				mesh.sharedMaterial = Crazytiles[Fill];
			}else{
				for(int j=0;j<Crazytiles.Length;j++){
					if(mesh.sharedMaterial==Crazytiles[j]){Fill=j;}
				}
				mesh.sharedMaterial=RealTiles[Fill];
			}
		}

	}


	// Update is called once per frame
	void Update () {

	}
}
