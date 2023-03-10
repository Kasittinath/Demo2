// ignore_for_file: prefer_const_constructors

import 'dart:html';

import 'package:flutter/material.dart';
import 'login.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("SasitaAPP"),
      ),
      body: Center(
        child: Padding(         
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text(
                "Welcome travelers",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(height:  30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text('Log Out'),
                        color:  Colors.teal,
                        textColor: Colors.white,
                      ),
                    ),
            ],
            
          ),
          
        ),
      ),
    );
  }
}
