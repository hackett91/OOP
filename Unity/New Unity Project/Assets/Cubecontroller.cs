using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Cubecontroller : MonoBehaviour {

	// Use this for initialization
	void Start () {

		
	}

    public float speed = 5;
    public float rotSpeed = 90;
	
	// Update is called once per frame
	void Update () {
        float move = Input.GetAxis("Vertical");
        transform.Translate(0, 0, speed * Time.deltaTime* move);
        Debug.Log(move);

        float rot = Input.GetAxis("Horizontal");
        transform.Rotate(Vector3.up, rot * Time.deltaTime * rotSpeed);
		
	}
}
