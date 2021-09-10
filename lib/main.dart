import 'package:flutter/material.dart';

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

class FoodPage extends StatelessWidget {
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
                  corbaNo = 5;
                  print('Corbaya tıklandı');
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
                  yemekNo = 5;
                  print('Yemek butonuna tıkladın');
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
                  tatliNo = 5;
                },
                child: Image.asset('assets/tatli_$tatliNo.jpg')),
          )),
        ],
      ),
    );
  }
}
