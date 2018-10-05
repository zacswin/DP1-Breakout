using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BallController : MonoBehaviour {


    public float velocity = 600f;

    private Rigidbody2D rigid2D;
    private bool ballInPlay;
	// Use this for initialization
	void Start () {
        rigid2D = GetComponent<Rigidbody2D>();
	}
	
	// Update is called once per frame
	void Update () {
        if (Input.GetButtonDown("Fire1") && ballInPlay == false)
        {
            transform.parent = null;
            ballInPlay = true;
            rigid2D.isKinematic = false;
            rigid2D.AddForce(new Vector3(velocity, velocity, 0));
        }
	}


}
