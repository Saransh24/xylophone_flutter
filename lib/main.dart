import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({ Key? key }) : super(key: key);

  void playSound(int num){
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildButton(int number,Color color){
    return Expanded(
      child: TextButton(
          style: TextButton.styleFrom(
          padding: const EdgeInsets.all(0),
        ),
        onPressed: () {
          playSound(number);
        },
        child: Container(
          color: color,
        ),
      ),
    );  
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(1,Colors.red),
              buildButton(2,Colors.orange),
              buildButton(3,Colors.yellow),
              buildButton(4,Colors.green),
              buildButton(5,Colors.blue),
              buildButton(6,Colors.indigo),
              buildButton(7,Colors.purple),
            ],
          ),
        ),
      )
    );
  }
}