import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context1) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                  image:
                      AssetImage('Assets\Civita Logo.jpg'),
                  fit: BoxFit.fitHeight),
            ),
              ),
              Container(
                child: Center(
                  child: Text(
                    'Civita',
                    style: TextStyle(
                        fontSize: 80,
                        color: Colors.purple.shade200,
                        fontFamily: "PlayFair"),
                  ),
                ),
                alignment: Alignment.centerLeft,
                height: 290,
                width: MediaQuery.of(context1).size.width,
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle:
                        TextStyle(fontFamily: "PlayFair", color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.green.shade100,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[400])),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[300])),
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle:
                        TextStyle(fontFamily: "PlayFair", color: Colors.grey),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.green.shade100,
                    ),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[400])),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: new BorderSide(color: Colors.grey[300])),
                  ),
                ),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                width: 230,
                height: 60,
                child: Center(
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontFamily: "PlayFair"),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Center(
                child: Text(
                  'Are You a Community Service Provider?',
                  style: TextStyle(
                      color: Colors.green.shade300,
                      fontFamily: 'PlayFair',
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
