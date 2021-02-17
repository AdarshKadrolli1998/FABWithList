import 'package:floating_button_with_list/common/popMenu.dart';
import 'package:flutter/material.dart';

class FlutterTutorial extends StatefulWidget {
  int initialValue;

  FlutterTutorial(this.initialValue);
  @override
  _FlutterTutorialState createState() => _FlutterTutorialState();
}

class _FlutterTutorialState extends State<FlutterTutorial> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Tutorial"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: (){},
            tooltip: 'Increment',
            child:MyPopupMenu(initialValue: widget.initialValue,)
        ),
      ),
    );
  }
}