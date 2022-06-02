import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AspectRatio',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AspectRatio'),
          elevation: 0,
          foregroundColor: Colors.cyanAccent,
          backgroundColor: Colors.black,
          centerTitle: true,
        ),
        backgroundColor: Colors.greenAccent[100],
        body: const AAA(),
      ),
    );
  }
}

class AAA extends StatelessWidget {
  const AAA({Key? key}) : super(key: key);

// Color _color = Color.fromARGB(255, 2, 215, 100);
  Color _makeColor() {
    // List<List> _colors = [];
    // for (int i = 0; i < 30; i++) {
    //   int _r = Random().nextInt(256);
    //   int _g = Random().nextInt(256);
    //   int _b = Random().nextInt(256);
    //   _colors.add([_r, _g, _b]);
    // }
    int r = Random().nextInt(256);
    int g = Random().nextInt(256);
    int b = Random().nextInt(256);
    return Color.fromARGB(255, r, g, b);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          width: 1000,
          // height: 1500,
          decoration: BoxDecoration(
            border: Border.all(color: _makeColor(), width: 5),
          ),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: _makeColor(), width: 3)),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: AspectRatio(
                      aspectRatio: 2.0,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: _makeColor())),
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset('dev01.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: _makeColor(), width: 3)),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: AspectRatio(
                      aspectRatio: 3.0,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: _makeColor())),
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset('dev01.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: _makeColor(), width: 3)),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: AspectRatio(
                      aspectRatio: 5.0,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: _makeColor())),
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset('dev01.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: _makeColor(), width: 3)),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: AspectRatio(
                      aspectRatio: 0.8,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: _makeColor())),
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset('dev01.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: _makeColor(), width: 3)),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: AspectRatio(
                      aspectRatio: 0.2,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: _makeColor())),
                        width: double.infinity,
                        height: double.infinity,
                        child: Image.asset('dev01.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(border: Border.all(color: _makeColor(), width: 3)),
                    alignment: Alignment.center,
                    width: 200.0,
                    height: 200.0,
                    child: AspectRatio(
                      aspectRatio: 2,
                      child: Container(
                        decoration: BoxDecoration(border: Border.all(color: _makeColor())),
                        width: double.infinity,
                        height: double.infinity,
                        child: Image(
                          image: AssetImage('dev01.jpg'), // Image.asset('assets/images/temp_meerkat2.jpg')
                          width: 400,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[],
              ),
              Row(
                children: <Widget>[],
              ),
              Row(
                children: <Widget>[],
              ),
              Row(
                children: <Widget>[],
              ),
              Row(
                children: <Widget>[],
              ),
              Row(
                children: <Widget>[],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
