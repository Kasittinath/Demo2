import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'main.dart';
import 'regis.dart';
import 'home.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  loginState  createState() => loginState();
}

class loginState extends State <login> {
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
            CircleAvatar(
            radius: 65,
            backgroundImage:
              NetworkImage('https://scontent.fubp1-1.fna.fbcdn.net/v/t39.30808-6/321658662_1109638503078081_8291425588353899817_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=09cbfe&_nc_eui2=AeEXtpgYb9hjT_XsmmRNMExWNZJ1xlLH-xk1knXGUsf7GXk_4LbkBORuMDA60AZs1KMJiLxZBbzNbP1xKLofhL9e&_nc_ohc=yJivpsQNtVEAX_isGnD&_nc_ht=scontent.fubp1-1.fna&oh=00_AfDvD8FTlAQOK-y8Ge4SgeJ5-mYiAE8fSLF01p4xxI8Yjw&oe=64084A98'),
            ),
            Text(
              'Login',
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
                          Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                        },
                        child: Text('ok'),
                        color:  Colors.teal,
                        textColor: Colors.white,
                      ),
                    ),


                    SizedBox(height:  30,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 55),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => regis()));
                        },
                        child: Text('Sign Up'),
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