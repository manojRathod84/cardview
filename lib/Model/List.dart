
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';


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

Container MyCard(String imageValue,String friutName,String subHeading){
  
  return Container(
                    width: 160.0,
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          Image.network(imageValue),
                          ListTile(
                            title: Text(friutName),
                            subtitle: Text(subHeading),
                          )
                        ],
                      ),
                    ),
                  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body:ListView(
          padding: EdgeInsets.all(16.0), 
          children:<Widget>[
              Container(
                  margin: EdgeInsets.symmetric(vertical: 20.0),
                  height: 900,  
                  child:Wrap(
                  runSpacing: 4.0,
                  spacing: 8.0,
                  direction: Axis.horizontal,
                  children: <Widget>[
                      MyCard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQzAHv7ixkozttaU3Wb-tRA5MutSMgymf9nQKgR1B_hD6yoq5Y9', "Pic 1","City"),
                      MyCard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQgQu8nlAEzW63m0pKcq9csbtk-3ni_QlvW4uy6DgeaWbO4Fze1', "Pic 2","Man Standing"),
                      MyCard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQra8PdQ-5NE4RT5XoZu0IWB3o3Yh4ZVuxo_7Qp6jnalMMIhSNL', "Pic 3","Crossing"),
                      MyCard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQvXWsobWnmSPehrP36kJ7MSyTSG7UVWjevz8tMb2fpew58lwGn', "Pic 4","Flower"),
                      MyCard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcRQmgqcbw34jPT7nIcg64C3prXhPgzFf34OhvZuAAHfShVnvAGw', "Pic 5","Heaven"),
                      MyCard('https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR6OMlDeDEWOV_oGZXNcESFuqj3Btb8XnixLkd6EtqLPKqT6tVB', "Pic 6","Ideas"),
                  ],
                  ),
              ),
          ],     
        ),
    );
  }
  
}


  