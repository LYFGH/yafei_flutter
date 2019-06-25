import 'package:flutter/material.dart';
import 'demo/oneClass/one_page.dart';
import 'demo/twoClass/two_page.dart';
import 'demo/layout_demo/layout_demo.dart';
import 'demo/view_demo/view_demo.dart';
import 'demo/view_demo/gridview.dart';
import 'demo/sliver_demo/sliver_index.dart';
import 'demo/route_demo/route_index.dart';
import 'demo/route_demo/easyroute.dart';
import 'demo/form_demo/form_index.dart';
import 'demo/button_demo/button_index.dart';


class DemoIndexPage extends StatelessWidget {
  const DemoIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('所有组件集合'),
      ),
      body: DemoIndexDemo(),
    );
  }
}

class DemoIndexDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListItem(title: "OnePage",page: OnePage()),
          ListItem(title: "TwoPage",page: TwoPage()),
          ListItem(title: "LayoutDemo",page: LayoutDemo()),
          ListItem(title: "ViewDemo",page: ViewDemo()),
          ListItem(title: "GridViewDemo",page: GridViewDemo()),
          ListItem(title: "SliverDemo",page: SliverDemo()),
          ListItem(title: "RouteIndexPage",page: RouteIndexPage()),
          ListItem(title: "EasyRouteDemo",page: EasyRouteDemo()),
          ListItem(title: "FormIndexpage",page: FormIndexpage()),
          ListItem(title: "ButtonIndexDemo",page: ButtonIndexPage()),
          // ListItem(title: "Stepper",page: StepperDemo()),
        ],
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  final String title;
  final Widget page;

  ListItem({
    this.title,
    this.page,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => page),
        );
      },
    );
  }
}
