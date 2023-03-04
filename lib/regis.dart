import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'login.dart';
import 'home.dart';

class regis extends StatefulWidget {
  const regis({super.key});

  @override
  regisState  createState() => regisState();
}

class regisState extends State <regis> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SasitaAPP'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Sign Up',
              style: TextStyle(
                fontSize: 30,
                color: Colors.teal,
                fontWeight: FontWeight.bold
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Form(
                child: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Name',
                          hintText: 'Enter name',
                          prefixIcon: Icon(Icons.account_circle_sharp),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){
                                
                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please Enter Name' : null;
                        },
                      ),
                    ),
                    
                    SizedBox(height:  30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: 'Lastname',
                          hintText: 'Enter lastname',
                          prefixIcon: Icon(Icons.account_circle_sharp),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){
                                
                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please Enter Lastname' : null;
                        },
                      ),
                    ),
                    
                    SizedBox(height:  30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'Email',
                          hintText: 'Enter email',
                          prefixIcon: Icon(Icons.email),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){
                                
                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please Enter Email' : null;
                        },
                      ),
                    ),

                    SizedBox(height:  30,),
                     Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                       child: TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          hintText: 'Enter password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder(),
                        ),
                        onChanged: (String value){
                                 
                        },
                        validator: (value){
                          return value!.isEmpty ? 'Please Enter Password' : null;
                        },
                                         ),
                     ),

                    SizedBox(height:  30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => login()));
                        },
                        child: Text('Confirm'),
                        color:  Colors.teal,
                        textColor: Colors.white,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}