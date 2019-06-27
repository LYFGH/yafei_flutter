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
//按钮
import 'demo/button_demo/button_index.dart';
//选择器
import 'demo/about_choose_demo/checkbox_demo.dart';
import 'demo/about_choose_demo/radio_demo.dart';
import 'demo/about_choose_demo/switch_demo.dart';
import 'demo/about_choose_demo/slider_demo.dart';
import 'demo/about_choose_demo/datetime_demo.dart';
//提示框
import 'demo/dio_log_demo/simple_dialog_demo.dart';
import 'demo/dio_log_demo/alert_dialog_demo.dart';
import 'demo/dio_log_demo/bottom_sheet_demo.dart';
import 'demo/dio_log_demo/snackbar_demo.dart';
import 'demo/dio_log_demo/expansion_panel_demo.dart';

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
          ListItem(title: "CheckBoxDemo",page: CheckBoxDemo()),
          ListItem(title: "RadioDemo",page: RadioDemo()),
          ListItem(title: "SwitchDemo",page: SwitchDemo()),
          ListItem(title: "SliderDemo",page: SliderDemo()),
          ListItem(title: "DateTimeDemo",page: DateTimeDemo()),
          ListItem(title: "SimpleDialogDemo",page: SimpleDialogDemo()),
          ListItem(title: "AlertDialogDemo",page: AlertDialogDemo()),
          ListItem(title: "BottomSheetDemo",page: BottomSheetDemo()),
          ListItem(title: "SnackBarDemo",page: SnackBarDemo()),
          ListItem(title: "ExpansionPanelDemo",page: ExpansionPanelDemo()),
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


class _widgetDemo extends StatelessWidget {
  const _widgetDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                
              ],
            )
          ],
        ),
      ),
    );
  }
}