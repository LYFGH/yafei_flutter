import 'package:flutter/material.dart';

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('AnimationDemo'),
          elevation: 0.0,
        ),
        body: AnimationDemoHome());
  }
}

class AnimationDemoHome extends StatefulWidget {
  @override
  _AnimationDemoHomeState createState() => _AnimationDemoHomeState();
}

class _AnimationDemoHomeState extends State<AnimationDemoHome>
    with TickerProviderStateMixin {
  //创建管理类    
  AnimationController animationDemoController;

  //定义动画变化值
  Animation animation;
  //定义动画变化颜色
  Animation animationColor;
  //动画曲线
  CurvedAnimation curve;

  @override
  void initState() {
    super.initState();

    animationDemoController = AnimationController(
      //设置动画初始值
      // value: 32.0,
      //动画初始最小值
      // lowerBound: 32.0,
      //动画初始最大值
      // upperBound: 100.0,
      duration: Duration(milliseconds: 1000),
      vsync: this,
    );
    //动画曲线赋值
    curve = CurvedAnimation(
        parent: animationDemoController, curve: Curves.bounceOut);
    //动画变化值
    animation = Tween(begin: 32.0, end: 100.0).animate(curve);
    //动画颜色变化值
    animationColor =
        ColorTween(begin: Colors.red, end: Colors.red[900]).animate(curve);

    // animationDemoController.addListener(() {
    //   // print('${animationDemoController.value}');
    //   setState(() {});
    // });
    //监听动画改变
    animationDemoController.addStatusListener((AnimationStatus status) {
      print(status);
    });

    // animationDemoController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    //移除动画管理类,优化内存
    animationDemoController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedHeart(
        animations: [
          animation,
          animationColor,
        ],
        controller: animationDemoController,
      ),
    );
  }
}

class AnimatedHeart extends AnimatedWidget {
  final List animations;
  final AnimationController controller;

  AnimatedHeart({
    this.animations,
    this.controller,
  }) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.favorite),
      iconSize: animations[0].value,
      color: animations[1].value,
      onPressed: () {
        switch (controller.status) {
          //动画
          case AnimationStatus.completed:
            controller.reverse();
            break;
          default:
            controller.forward();
        }
      },
    );
  }
}
