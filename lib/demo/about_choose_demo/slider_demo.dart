import 'package:flutter/material.dart';

class SliderDemo extends StatefulWidget {
  @override
  _SliderDemoState createState() => _SliderDemoState();
}

class _SliderDemoState extends State<SliderDemo> {
  double _sliderItemA = 0.0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderDemo'),
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
                Slider(
                  //默认数值
                  value: _sliderItemA,
                  //改变
                  onChanged: (value) {
                    setState(() {
                      _sliderItemA = value;
                    });
                  },
                  //已滚动部分的颜色
                  activeColor: Theme.of(context).accentColor,
                  //未滚动部分的颜色
                  inactiveColor: Theme.of(context).accentColor.withOpacity(0.3),
                  //最小
                  min: 0.0,
                  //最大,
                  max: 10.0,
                  //分成的份数
                  divisions: 10,
                  label: '${_sliderItemA.toInt()}',
                ),
              ],
            ),
            SizedBox(height: 16.0,),
            Text('SliderValue: $_sliderItemA'),
          ],
        ),
      )
    );
  }
}