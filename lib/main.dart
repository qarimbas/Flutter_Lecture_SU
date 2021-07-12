import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CS310',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
          fontSize: 32,
        ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green[800],
        foregroundColor: Colors.white,
        elevation: 6,
        shadowColor: Colors.pink,
        leading: Text('lead'),
        actions: [
          Text('Action 1'),
          Text('Action 2'),
        ],
      ),
      body: Center(
      child: Text(
        'Hello World!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 40.0,
          //fontWeight: FontWeight.w700,
          fontStyle: FontStyle.italic,
        ),
        ),
        
  ),
    );
  }
}