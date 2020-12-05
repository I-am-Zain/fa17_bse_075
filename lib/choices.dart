import 'package:flutter/material.dart';
import 'HardPage.dart';
class ChoicePage extends StatefulWidget {
  @override
  _ChoicePageState createState() => _ChoicePageState();
}

class _ChoicePageState extends State<ChoicePage> {
  var finalScore = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Hard Dice Roll'),
      ),
      body: Container(
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(onPressed:() {
                // ignore: unrelated_type_equality_checks

                //Navigator.pop(context);
                },
                child: Text('1'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(onPressed:() {Navigator.pop(context);},
                child: Text('2'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(onPressed:() {Navigator.pop(context);},
                child: Text('3'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(onPressed:() {Navigator.pop(context);},
                child: Text('4'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: RaisedButton(onPressed:() {Navigator.pop(context);},
                child: Text('5'),
              ),
            ),
            new Text(
              "Score: $finalScore",
              style: new TextStyle(
                  fontSize: 22.0, color: Colors.red),
            )
          ],
        ),
      ),
    );
  }

}
