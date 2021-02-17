import 'package:flutter/material.dart';
import 'package:floating_button_with_list/screens/flutterDemo.dart';
import 'package:floating_button_with_list/screens/flutterExample.dart';
import 'package:floating_button_with_list/screens/flutterOpen.dart';
import 'package:floating_button_with_list/screens/flutterTutorial.dart';

class MyPopupMenu extends StatefulWidget {
  final int initialValue;
  MyPopupMenu({@required this.initialValue});
  @override
  _MyPopupMenuState createState() => _MyPopupMenuState();
}

class _MyPopupMenuState extends State<MyPopupMenu> {
  var val;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
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
      onSelected: (value) {
        if(value == 1){
          print("Flutter open");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlutterOpen(value),
            ),
          );
        }else if(value == 2){
          print("Flutter tutorial");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlutterTutorial(value),),
          );
        }else if(value == 3){
          print("Flutter demo");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlutterDemo(value),),
          );
        }else {
          print("Flutter example");
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlutterExample(value),),
          );
        }
      },
      initialValue: widget.initialValue,
    );
  }
}
