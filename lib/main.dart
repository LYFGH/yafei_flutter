import 'package:flutter/material.dart';
import 'demo/one_page.dart';
import 'demo/two_page.dart';



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
        primarySwatch: Colors.yellow
      ),
    );
  }
}