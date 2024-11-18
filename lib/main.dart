import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan.shade800,
        appBar: AppBar(
          title: Text('Dice'),
          backgroundColor: Colors.cyan.shade900,
        ),
        body: DicePage(),
      ),
    ),
  );
}



class DicePage extends StatefulWidget {

  @override
  State<DicePage> createState() => _DicePagestate();
}

class _DicePagestate extends State<DicePage> {
int rightdicenumber=5;
int leftdicenumber=2;

void click(){
  leftdicenumber = Random().nextInt(6)+1;
  rightdicenumber= Random().nextInt(6)+1;
}

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child:TextButton(
              onPressed:(){
                setState (() {
                  click();
                });
              },
              child: Image.asset('images/dice$leftdicenumber.png'),
              ),
            ),
          Expanded(
            child:TextButton(
              onPressed: (){
                setState(() {
                  click();
                });
              },
              child: Image.asset('images/dice$rightdicenumber.png'),
              ),
            ),
        ],
      ),
    );
  }
}

