import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "TextField Widget",
      home: FavouriteFlower()
    )
  );
}

class FavouriteFlower extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavouriteFlower();
  }
}

class _FavouriteFlower extends State{

  String nameFlower = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flower", style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userInput){    //onChanged() for realtime text update
                setState(() {
                  nameFlower = userInput;
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Your Favourite Flower is: $nameFlower",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}