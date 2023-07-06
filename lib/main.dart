import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftdicenumber=1;
  int rightdicenumber=2;
  void changeface(){
    leftdicenumber= Random().nextInt(6) +1;
    rightdicenumber= Random().nextInt(6) +1;
  }


  @override
  Widget build(BuildContext context) {

      return Center(
    child: Row(
      children: [
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeface(); //press one all dices randomises
                  });
                },
                child: Image.asset('images/dicee$leftdicenumber.png'),
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextButton(
                onPressed: () {
                  setState(() {
                    changeface();
                  });

                },
                child: Image.asset('images/dicee$rightdicenumber.png'),
              ),
            )),
      ],
    ),
      );
  }
}


