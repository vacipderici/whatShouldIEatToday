import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'What Should I Eat Today',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        body: FoodPage(),
      ),
    );
  }
}

class FoodPage extends StatefulWidget {
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int corbaNo = 1;

  int tatliNo = 1;

  int yemekNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    corbaNo = Random().nextInt(5) + 1;
                    yemekNo = Random().nextInt(5) + 1;
                    tatliNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/corba_$corbaNo.jpg')),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    corbaNo = Random().nextInt(5) + 1;
                    yemekNo = Random().nextInt(5) + 1;
                    tatliNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/yemek_$yemekNo.jpg')),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    corbaNo = Random().nextInt(5) + 1;
                    yemekNo = Random().nextInt(5) + 1;
                    tatliNo = Random().nextInt(5) + 1;
                  });
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg')),
          )),
        ],
      ),
    );
  }
}
