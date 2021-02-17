import 'package:floating_button_with_list/common/popMenu.dart';
import 'package:flutter/material.dart';

class FlutterDemo extends StatefulWidget {
  int initialValue;

  FlutterDemo(this.initialValue);
  @override
  _FlutterDemoState createState() => _FlutterDemoState();
}

class _FlutterDemoState extends State<FlutterDemo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Demo"),
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