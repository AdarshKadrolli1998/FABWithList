import 'package:floating_button_with_list/common/popMenu.dart';
import 'package:flutter/material.dart';

class FlutterExample extends StatefulWidget {
  int initialValue;

  FlutterExample(this.initialValue);
  @override
  _FlutterExampleState createState() => _FlutterExampleState();
}

class _FlutterExampleState extends State<FlutterExample> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Example"),
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