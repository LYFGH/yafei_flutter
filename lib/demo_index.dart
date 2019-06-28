import 'package:flutter/material.dart';
import 'package:yafei_flutter/statemanagement/state_management_demo.dart';
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
//碎片组件
import 'demo/mdc_demo/chip_demo.dart';
import 'demo/mdc_demo/data_table_demo.dart';
import 'demo/mdc_demo/pageinate_data_table_demo.dart';
import 'demo/mdc_demo/card_demo.dart';
import 'demo/mdc_demo/stepper_demo.dart';


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
          ListItem(title: "开始",page: OnePage()),
          ListItem(title: "TwoPage",page: TwoPage()),
          ListItem(title: "布局Layout",page: LayoutDemo()),
          ListItem(title: "视图ViewDemo",page: ViewDemo()),
          ListItem(title: "网格视图GridView",page: GridViewDemo()),
          ListItem(title: "条目SliverDemo",page: SliverDemo()),
          ListItem(title: "路径RouteIndexPage",page: RouteIndexPage()),
          ListItem(title: "简单路径EasyRoute",page: EasyRouteDemo()),
          ListItem(title: "表单FormIndexpage",page: FormIndexpage()),
          ListItem(title: "按钮ButtonIndex",page: ButtonIndexPage()),
          ListItem(title: "选择框CheckBox",page: CheckBoxDemo()),
          ListItem(title: "单项选择RadioDemo",page: RadioDemo()),
          ListItem(title: "选择SwitchDemo",page: SwitchDemo()),
          ListItem(title: "滑动选择SliderDemo",page: SliderDemo()),
          ListItem(title: "时间选择器DateTime",page: DateTimeDemo()),
          ListItem(title: "对话框SimpleDialogDemo",page: SimpleDialogDemo()),
          ListItem(title: "提示AlertDialogDemo",page: AlertDialogDemo()),
          ListItem(title: "下部选项BottomSheet",page: BottomSheetDemo()),
          ListItem(title: "下部提示SnackBar",page: SnackBarDemo()),
          ListItem(title: "可扩展选项卡ExpansionPanel",page: ExpansionPanelDemo()),
          ListItem(title: "标签Chip",page: ChipDemo()),
          ListItem(title: "数据表格DataTable",page: DataTableDemo()),
          ListItem(title: "分页数据表格PaginatedDataTable",page: PaginatedDataTableDemo()),
          ListItem(title: "卡片式列表Card",page: CardDemo()),
          ListItem(title: "分步式选项Stepper",page: StepperDemo()),
          ListItem(title: "状态管理",page: StateManagementDemo()),

          


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