import 'package:flutter/material.dart';

class FloatingActionButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Widget _floatingActionButton = FloatingActionButton(
      onPressed: () {},
      child: Icon(Icons.add),
      elevation: 0.0,
      backgroundColor: Colors.black87,
      // shape: BeveledRectangleBorder(
      //   borderRadius: BorderRadius.circular(30.0)
      // ),
    );
    //漂浮按钮
    final Widget _floatingActionButtonExtended = FloatingActionButton.extended(
      onPressed: () {},
      icon: Icon(Icons.add),
      label: Text('Add'),
    );
    
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButtonDemo'),
        elevation: 0.0,
      ),
      //设置按钮
      floatingActionButton: _floatingActionButton,
      //设置成中间漂浮
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 80.0,
        ),
        shape: CircularNotchedRectangle(),
      ),
    );
  }
}