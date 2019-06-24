import 'package:flutter/material.dart';
import 'demo/oneClass/one_page.dart';
import 'demo/twoClass/two_page.dart';



void main(){


  runApp(App());
}


class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yafei_flutter',
      home: TwoPage(),
      theme: ThemeData(
        // primaryColor: Colors.yellow,
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
    );
  }
}