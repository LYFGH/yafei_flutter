import 'package:flutter/material.dart';

class ChipDemo extends StatefulWidget {
  @override
  _ChipDemoState createState() => _ChipDemoState();
}

class _ChipDemoState extends State<ChipDemo> {
  List<String> _tags = [
    'Apple',
    'Banana',
    'Lemon',
  ];

  String _action = 'Nothing';
  List<String> _selected = [];
  String _choice = 'Lemon';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ChipDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: <Widget>[
                Chip(
                  label: Text('Life'),
                ),
                Chip(
                  label: Text('Sunset'),
                  backgroundColor: Colors.orange,
                ),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Text('皓'),
                  ),
                ),
                Chip(
                  label: Text('Wanghao'),
                  avatar: CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://resources.ninghao.net/images/wanghao.jpg'
                    ),
                  ),
                ),
                Chip(
                  //标题,删除操作
                  label: Text('City'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.redAccent,
                  //长按提示
                  deleteButtonTooltipMessage: 'Remove this tag',
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    return Chip(
                      label: Text(tag),
                      onDeleted: () {
                        setState(() {
                          _tags.remove(tag);
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('动作标签ActionChip: $_action'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    //点按小标签
                    return ActionChip(
                      label: Text(tag),
                      onPressed: () {
                        setState(() {
                          _action = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('过滤标签FilterChip: ${_selected.toString()}'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    //选中,左边出现对号
                    return FilterChip(
                      label: Text(tag),
                      selected: _selected.contains(tag),
                      onSelected: (value) {
                        setState(() {
                          if (_selected.contains(tag)) {
                            _selected.remove(tag);
                          } else {
                            _selected.add(tag);
                          }
                        });
                      },
                    );
                  }).toList(),
                ),
                Divider(
                  color: Colors.grey,
                  height: 32.0,
                  // indent: 32.0,
                ),
                Container(
                  width: double.infinity,
                  child: Text('选择标签ChoiceChip: $_choice'),
                ),
                Wrap(
                  spacing: 8.0,
                  children: _tags.map((tag) {
                    //一组里面选中一个,
                    return ChoiceChip(
                      label: Text(tag),
                      selectedColor: Colors.black,
                      selected: _choice == tag,
                      onSelected: (value) {
                        setState(() {
                          _choice = tag;
                        });
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.restore),
        onPressed: () {
          setState(() {
            _tags = [
              'Apple',
              'Banana',
              'Lemon',
            ];

            _selected = [];

            _choice = 'Lemon';
          });
        },
      ),
    );
  }
}