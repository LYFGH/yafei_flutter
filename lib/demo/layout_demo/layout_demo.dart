import 'package:flutter/material.dart';

class LayoutDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('布局'),
      ),
      body: StackDemo(),
    );
  }
}


//宽高比
class AspectRatioDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        AspectRatio(
          aspectRatio: 16.0/9.0,
          child: Container(
            color: Colors.blue[300],
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 200.0,
            maxWidth: 200.0,
          ),
          child: Container(
            color: Colors.pink[300],
          ),
        ),
      ],
    );
  }
}







//绝对定位
class StackDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      //主轴,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            SizedBox(
              width: 200.0,
              height: 300.0,
              child: Container(
                //对齐方式0.0~1.0
                alignment: Alignment(0.0,-0.9),
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Icon(Icons.ac_unit,color:Colors.white,size:32.0),
              ),
            ),
            SizedBox(
              height: 32.0,
            ),
            SizedBox(
              width: 100.0,
              height: 100.0,
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.blue[300],
                  shape: BoxShape.circle,
                  gradient: RadialGradient(
                    colors: [Colors.white10,Colors.white70],
                  )
                ),
                child: Icon(Icons.brightness_2,color:Colors.white,size:32.0),
              ),
            ),
            Positioned(
              right: 20.0,
              top: 20.0,
              child: Icon(Icons.ac_unit,color:Colors.white,size:16.0),
            ),
            Positioned(
              right: 30.0,
              top: 40.0,
              child: Icon(Icons.ac_unit,color:Colors.white,size:18.0),
            ),
            Positioned(
              right: 40.0,
              top: 60.0,
              child: Icon(Icons.ac_unit,color:Colors.white,size:20.0),
            ),
            Positioned(
              right: 30.0,
              top: 80.0,
              child: Icon(Icons.ac_unit,color:Colors.white,size:26.0),
            ),
            Positioned(
              right: 20.0,
              bottom: 20.0,
              child: Icon(Icons.ac_unit,color:Colors.white,size:30.0),
            ),
          ],
        )
      ],
    );
  }
}







//自定义宽高的
class SizeBoxDemo extends StatelessWidget {
  const SizeBoxDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //主轴,
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: <Widget>[
        SizedBox(
          width: 200.0,
          height: 300.0,
          child: Container(
            //对齐方式0.0~1.0
            alignment: Alignment(1.0,1.0),
            decoration: BoxDecoration(
              color: Colors.blue[300],
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Icon(Icons.ac_unit,color:Colors.white,size:32.0),
          ),
        ),
      ],
    );
  }
}






//竖排
class ColumnDemo extends StatelessWidget {
  const ColumnDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      //主轴,
      mainAxisAlignment: MainAxisAlignment.start,
      //交叉轴
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access),
        IconBadge(Icons.airplanemode_active),
      ],
    );
  }
}

//横排
class RowDemo extends StatelessWidget {
  const RowDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconBadge(Icons.pool),
        IconBadge(Icons.beach_access),
        IconBadge(Icons.airplanemode_active),
      ],
    );
  }
}

//平常
class FirstLayoutDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconBadge(Icons.pool),
    );
  }
}

class IconBadge extends StatelessWidget {
  
  final IconData icon;
  final double size;

  IconBadge(this.icon,{this.size = 32.0});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(icon,size:size,color:Colors.blue),
      height: size + 60.0,
      width: size + 60.0,
      color: Color.fromRGBO(3, 54, 255, 1.0),
    );
  }
}