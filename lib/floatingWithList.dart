
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {

  Widget _offsetPopup() => PopupMenuButton<int>(
      itemBuilder: (context) => [
        PopupMenuItem(
          value: 1,
          child: Text(
            "Flutter Open",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 2,
          child: Text(
            "Flutter Tutorial",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 3,
          child: Text(
            "Flutter Demo",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
        PopupMenuItem(
          value: 4,
          child: Text(
            "Flutter Example",
            style: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ],
      icon: Icon(Icons.add),
      offset: Offset(0, -215),
      // Container(
      //   height: double.infinity,
      //   width: double.infinity,
      //   decoration: ShapeDecoration(
      //       color: Colors.blue,
      //       shape: StadiumBorder(
      //         side: BorderSide(color: Colors.white, width: 2),
      //       )
      //   ),
      //   //child: Icon(Icons.menu, color: Colors.white), <-- You can give your icon here
      // )
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Popup"),
        ),
        body: Container(
            padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
            child: Align(
              alignment: Alignment.bottomRight,
              child: FloatingActionButton(
                  onPressed: (){},
                  tooltip: 'Increment',
                  child: _offsetPopup()
              ),
            ),
        ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){},
      //   tooltip: 'Increment',
      //   child: _offsetPopup()
      // ),
    );
  }
}