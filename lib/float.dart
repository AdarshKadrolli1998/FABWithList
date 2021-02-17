
import "package:flutter/material.dart";

class PopupMenu extends StatefulWidget {
  @override
  _PopupMenuButtonState createState() => _PopupMenuButtonState();
}

class _PopupMenuButtonState extends State<PopupMenu> {
  @override
  Widget build(BuildContext context) {
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
      ],
      icon: Icon(Icons.library_add),
      offset: Offset(0, 100),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text("POPUP_MENU_BUTTON"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            //our code.
            // _simplePopup(),
            SizedBox(height: 10),
            Container(
              color: Colors.lightBlue,
              child: _offsetPopup(),
            ),
            SizedBox(height: 600)
          ],
        ),
      ),
    );
  }
}