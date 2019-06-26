import 'package:flutter/material.dart';

class CheckBoxDemo extends StatefulWidget {
  CheckBoxDemo({Key key}) : super(key: key);

  _CheckBoxDemoState createState() => _CheckBoxDemoState();
}

class _CheckBoxDemoState extends State<CheckBoxDemo> {
  bool _checkboxItemA = true;
  bool _checkboxItemB = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBoxDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CheckboxListTile(
                  value: _checkboxItemA,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemA = value;
                    });
                  },
                  title: Text('Checkbox Item A'),
                  subtitle: Text('Description'),
                  secondary: Icon(Icons.bookmark),
                  selected: _checkboxItemA,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Checkbox(
                  value: _checkboxItemB,
                  onChanged: (value) {
                    setState(() {
                      _checkboxItemB = value;
                    });
                  },
                  activeColor: Colors.black,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}