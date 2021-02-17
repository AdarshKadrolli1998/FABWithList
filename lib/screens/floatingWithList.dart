import 'package:floating_button_with_list/common/popMenu.dart';
import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  int initialValue;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                    child: MyPopupMenu(initialValue: widget.initialValue,)
                ),
              ),
          ),
      ),
    );
  }
}