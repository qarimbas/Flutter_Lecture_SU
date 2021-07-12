import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  void buttonPressed() {
    print('Button Pressed');
  }

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
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.grey[350],
        child: Text('CS310'),
      ),
    );
  }

  IconButton buildIconButton() {
    return IconButton(
        onPressed: buttonPressed,
        icon: Icon(Icons.alternate_email,),
        iconSize: 48,
        color: Colors.red,
      );
  }

  OutlinedButton buildOutlinedIconButton() {
    return OutlinedButton.icon(onPressed: buttonPressed,
       icon: Icon(Icons.email_outlined,
       size: 30,
       color: Colors.green,),
        label: Text('TextButton',
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 30,
      ),),);
  }

  OutlinedButton buildOutlinedButton() {
    return OutlinedButton(
        onPressed: () {
          buttonPressed();
        },
        child: Text('TextButton',
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 24,
        ),),
      );
  }

  Icon buildIcon() {
    return Icon(Icons.message_outlined,
      color: Colors.green[900],
      size: 64.0,
      );
  }

  Image buildImage2() {
    return Image.asset('assets/car-1.jpg',
      height: 500,
      width: 250,);
  }

  Image buildImage(String src) {
    return Image.network(src,
    width: 200,
    height: 300,
    fit: BoxFit.cover,
    );
  }

  Text buildText() {
    return Text(
      'Hello World!',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 40.0,
        //fontWeight: FontWeight.w700,
        fontStyle: FontStyle.italic,
      ),
      );
  }
}