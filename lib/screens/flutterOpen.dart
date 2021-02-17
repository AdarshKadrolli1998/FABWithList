import 'package:floating_button_with_list/common/popMenu.dart';
import 'package:flutter/material.dart';

class FlutterOpen extends StatefulWidget {
  int initialValue;

  FlutterOpen(this.initialValue);
  @override
  _FlutterOpenState createState() => _FlutterOpenState();
}

class _FlutterOpenState extends State<FlutterOpen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Open"),
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