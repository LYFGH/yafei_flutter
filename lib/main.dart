import 'package:flutter/material.dart';
import 'demo/oneClass/one_page.dart';
import 'demo/twoClass/two_page.dart';
import 'demo/basic_widget/basic_widget.dart';
import 'demo/layout_demo/layout_demo.dart';
import 'demo/view_demo/view_demo.dart';
import 'demo/view_demo/gridview.dart';
import 'demo/sliver_demo/sliver_index.dart';
import 'demo/route_demo/route_index.dart';
import 'demo/route_demo/easyroute.dart';

void main(){


  runApp(App());
}


class App extends StatelessWidget {
  const App({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'yafei_flutter',
      // home: EasyRouteDemo(),
      theme: ThemeData(
        // primaryColor: Colors.yellow,
        primarySwatch: Colors.yellow,
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        splashColor: Colors.white70
      ),
      //定义路由
      //根路由
      initialRoute: '/',
      routes: {
        '/':(context) => EasyRouteDemo(),
        //设置根,初始路由
        '/about':(context) => AboutSubView(title: 'About',)
      },





    );
  }
}