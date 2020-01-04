import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'cardholder.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Card View'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
    final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10.0),
            width:600,
            height: 225,
            child: FlipCard(
                            direction: FlipDirection.HORIZONTAL, // default
                  front: Container(
                             child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQzAHv7ixkozttaU3Wb-tRA5MutSMgymf9nQKgR1B_hD6yoq5Y9"),
                         ),
                  back: Container(
                           child:Center(
                            child: Text('City',textAlign: TextAlign.center,
                            style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20.0),),
                           ),
                       ),
           ) ,
          ),
          Divider(
            height: 8.0,
            color: Colors.black87,
          ),
          Container(
            width: 600,
            height: 600,
            color: Colors.orange,
            child: CardHolder(),
          ),
        ],
      ),
      );
  }
}
