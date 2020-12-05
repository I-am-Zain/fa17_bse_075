import 'package:fa17_bse_075/HardPage.dart';
import 'package:fa17_bse_075/simpleDice.dart';
import 'package:flutter/material.dart';

class  HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('DICE App'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Expanded(

                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: FlatButton(
                    textColor: Colors.white,
                    color: Colors.blue[700],
                    child: Text(
                      'Simple',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      ),
                    ),
                    onPressed: simpleDice,
                  ),
                ),
          ),
                Expanded(

                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: FlatButton(

                      textColor: Colors.white,
                      color: Colors.blue[700],
                      child: Text(
                        'Hard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      onPressed: hardDice,

                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(

                accountName: Text('ZAIN_UL_ABIDEEN'),
                accountEmail: Text('zaynee.chaudhary@gmail.com'),

                currentAccountPicture: GestureDetector(
                  onTap: ()=>_showSecondPage(context),
                  child: CircleAvatar(
                      backgroundImage: AssetImage('image/zain.jpg')

                  ),
                )
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Account'),
              subtitle: Text('Personal'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.phone_android),
              title: Text('Phone'),
              subtitle: Text('03052740995'),
              trailing: Icon(Icons.edit),
            ),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('Email'),
              subtitle: Text('zaynee.chaudhary@gmail.com'),
              trailing: Icon(Icons.edit),
            ),
          ],
        ),
      ),

    );
  }
  void simpleDice() {
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new SimpleDice()));
    });
  }

  void hardDice() {
    setState(() {
      Navigator.push(context, new MaterialPageRoute(builder: (context) => new HardDice()));
    });
  }
  void _showSecondPage(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => Scaffold(
          body: Center(
            child: Hero(
              tag: 'my-hero-animation-tag',
              child: Image.asset('image/zain.jpg'),
            ),
          ),
        ),
      ),
    );
  }




}


