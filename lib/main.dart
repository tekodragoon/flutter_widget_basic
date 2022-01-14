import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Base Widget',
      theme: new ThemeData(
        primarySwatch: Colors.lightBlue
      ),
      debugShowCheckedModeBanner: false,
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Home();
  }
}

class _Home extends State<Home> {
  bool chooseColor = false;
  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('HomePage'),
        leading: new Icon(Icons.account_circle),
        actions: <Widget> [
          new Icon(Icons.access_alarm),
          new Icon(Icons.golf_course),
          new Icon(Icons.directions_bike)
        ],
        elevation: 10.0,
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          new Container(
            color: Colors.blue[100],
            //height: MediaQuery.of(context).size.height / 2,
            //width: MediaQuery.of(context).size.width / 3,
            //margin: EdgeInsets.only(top: 20.0, bottom: 15.0),
            margin: EdgeInsets.all(_height * 0.01),
            child: new Center(
              child: new Card(
                elevation: 10.0,
                color: Colors.blue[200],
                child: new Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: _height * 0.35,
                  //child: new Image.network(
                  //  'https://codabee.com/wp-content/uploads/2018/03/cropped-Artboard-2.png',
                  //  fit: BoxFit.fitWidth,
                  //),
                  child: new Image.asset('Images/Dragon.png',
                    fit: BoxFit.fitHeight),
                  )
              )
            )
          ),
          new Container(
            color: Colors.lightBlueAccent,
            margin: EdgeInsets.all(10.0),
            height: _height * 0.35,
            width: MediaQuery.of(context).size.width * 0.9,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.max,
              children: [
                new Text(
                  'Demo de Widget',
                  textAlign: TextAlign.center,
                  textScaleFactor: 1.5,
                  style: new TextStyle(
                    color: (chooseColor) ? Colors.yellowAccent : Colors.black,
                    fontSize: 20.0,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold
                  ),
                ),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    new IconButton(
                        icon: new Icon(
                          Icons.colorize,
                          size: 60.0,
                          color: Colors.pink,
                        ),
                        onPressed: () {
                          setState(() {
                            chooseColor = !chooseColor;
                          });
                        }),
                    new FloatingActionButton(
                      onPressed: changeColor,
                      elevation: 10.0,
                      child: new Icon(Icons.colorize_sharp),
                    )
                  ],
                )
              ],
            )

          )
        ]
      )
    );
  }

  void changeColor() {
    setState(() {
      chooseColor = !chooseColor;
    });
  }
}