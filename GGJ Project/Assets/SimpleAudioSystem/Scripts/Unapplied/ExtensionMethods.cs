using UnityEngine;
using System.Collections;
using System.Timers;
using System.Runtime.InteropServices;
using System;
using System.Collections.Generic;

public static class ExtensionMethods
{
	public static bool IsNullOrEmpty(this ICollection e)
	{
		return e == null || e.Count == 0;
	}
	public static void ForEach<T>(this IEnumerable arr, Action<T> act)
	{
		foreach (T t in arr)
		{
			act(t);
		}
	}
	public static T Instantiate<T>(this T o) where T : MonoBehaviour
	{
		return Instantiate(o, Vector3.up*10000, Quaternion.identity);
	}
	public static T Instantiate<T>(this T o, Vector3 position, Quaternion rotation) where T : MonoBehaviour
	{
		if (o != null)
		{
			return GameObject.Instantiate(o, position, rotation) as T;
		}
		return null;
	}
}