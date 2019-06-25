import 'package:flutter/material.dart';
import 'float_action_btn.dart';
import 'buttons_demo.dart';
import 'popup_menu_button_demo.dart';
import 'stepper_demo.dart';



class ButtonIndexPage extends StatelessWidget {
  const ButtonIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('按钮组件'),
      ),
      body: ButtonIndexDemo(),
    );
  }
}

class ButtonIndexDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          ListItem(title: "FloatActionButton",page: FloatingActionButtonDemo()),
          ListItem(title: "ButtonsDemo",page: ButtonDemo()),
          ListItem(title: "PopupMenu",page: PopupMenuButtonDemo()),
          
          
          
          ListItem(title: "Stepper",page: StepperDemo()),
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
