import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red.shade200,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
              color: Colors.black,
              fontSize: 40,
              fontFamily: ('Pacifico'),
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.red.shade100,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void changeDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
        Text(
          'Dicee',
          style: TextStyle(
            color: Colors.black,
            fontSize: 40,
            fontFamily: ('Pacifico'),
            fontWeight: FontWeight.bold,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: SizedBox(
            width: 150,
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red.shade100),
                elevation: MaterialStateProperty.all(6),
                side: MaterialStateProperty.all(
                  BorderSide(width: 2, color: Colors.black12),
                ),
              ),
              onPressed: () {
                changeDice();
              },
              child: Text(
                'ROLL',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: ('Pacifico'),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
