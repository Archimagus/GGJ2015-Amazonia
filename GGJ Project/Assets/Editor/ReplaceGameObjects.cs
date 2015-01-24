using UnityEngine;

using UnityEditor;

using System.Collections;



// CopyComponents - by Michael L. Croswell for Colorado Game Coders, LLC

// March 2010



//Modified by Kristian Helle Jespersen

//June 2011



public class ReplaceGameObjects : ScriptableWizard
{
	public bool copyRotation = true;
	public bool copyScale = true;

	public GameObject NewType;

	public GameObject[] OldObjects;



	[MenuItem("GameObject/Replace GameObjects %t")]
	static void CreateWizard()
	{
		var replaceGameObjects = ScriptableWizard.DisplayWizard<ReplaceGameObjects>("ReplaceGameObjects", "Replace");

		replaceGameObjects.OldObjects = Selection.gameObjects;

	}
	[MenuItem("GameObject/Replace GameObjects %t", true)]
	static bool ValidateCreateWizard()
	{
		// Return false if no transform is selected.
		return Selection.gameObjects.Length > 0;
	}


	void OnWizardUpdate() { helpString = "Please selet the replacement prefab!"; }   

	void OnWizardCreate()
	{
		foreach (GameObject go in OldObjects)
		{
			GameObject newObject;

			newObject = (GameObject)PrefabUtility.InstantiatePrefab(NewType);

			newObject.transform.parent = go.transform.parent;

			newObject.transform.localPosition = go.transform.localPosition;

			if(copyRotation)
				newObject.transform.localRotation = go.transform.localRotation;
			
			if(copyScale)
				newObject.transform.localScale = go.transform.localScale;



			DestroyImmediate(go);

		}

	}



}