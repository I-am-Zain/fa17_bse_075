import 'package:flutter/material.dart';

import 'dart:math';

import 'choices.dart';
class HardDice extends StatefulWidget {

  @override
  _HardDiceState createState() => _HardDiceState();
}

class _HardDiceState extends State<HardDice> {
  var imageArray = ['dice1.png', 'dice2.png', 'dice3.png', 'dice4.png', 'dice5.png', 'dice6.png'];
  //var random = new Random();
  int randomIntForDiceOne = Random().nextInt(6);
  int randomIntForDiceTwo = Random().nextInt(6);
   bool _visible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      appBar: AppBar(
        title: Text('Hard Dice Roll'),

      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(21, 50, 21, 50),
        child: Column(
          children: [
            Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
             children: <Widget>[
               Expanded(child: RaisedButton(
                 child: Text('Dice Roll'),
                 onPressed: (){
                   setState(() {
                     changeImage();
                     _visible =!_visible;
                     //diceChoice();

                   });
                 },
               ),
               ),


            ],),
            Expanded(child: Visibility(visible: !_visible, child: Image.asset('image/'+imageArray[randomIntForDiceOne], height: 150, width: 150,)))
          ],
        ),
      ),
    );
  }
  void changeImage() {
    setState(() {
      randomIntForDiceOne = Random().nextInt(6);
      randomIntForDiceTwo = Random().nextInt(6);
    });
  }
  void diceChoice() {
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new ChoicePage()));
    });
  }

}
