import 'package:flutter/material.dart';

class BottomNavigationbarDemo extends StatefulWidget {
  BottomNavigationbarDemo({Key key}) : super(key: key);

  _BottomNavigationbarDemoState createState() => _BottomNavigationbarDemoState();
}

class _BottomNavigationbarDemoState extends State<BottomNavigationbarDemo> {
  int _currentIndex = 0;

  void _onTapHandler(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //出现四个以上就要设置这个要不会显示不出来
      type: BottomNavigationBarType.fixed,
      currentIndex: _currentIndex,
      fixedColor: Colors.black,
      onTap: _onTapHandler,

      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          title: Text('explore')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          title: Text('history')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('list')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('person')
        ),
      ],
    );
  }
}