import 'package:flutter/material.dart';
import 'login.dart';
import 'regis.dart';
import 'home.dart';
import 'ddd.txt';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(home: login());
    }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 1"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
          },
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Page 2"),
      ),
      body: Center(
        child: MaterialButton(
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}