import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ContainerDemo(),
    );
  }
}

class ContainerDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage('https://resources.ninghao.org/images/dragon.jpg'),
          alignment: Alignment.topCenter,
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.pinkAccent[100],
            //滤镜混合模式
            BlendMode.lighten,
          )
        )
      ),

      // color: Colors.grey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          Container(
            child: Icon(Icons.pool, size: 32.0, color: Colors.white,),
            // color: Color.fromRGBO(3, 54, 255, 1.0),
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.all(8.0),
            width: 90.0,
            height: 90.0,
            decoration: BoxDecoration(
              color: Colors.white10,
              // //单个设置
              // border: Border(
              //   top: BorderSide(
              //     color: Colors.yellow,
              //     width: 3.0,
              //     style: BorderStyle.solid
              //   )
              // )
              border: Border.all(
                color:Colors.yellow,
                width: 3.0,
                style: BorderStyle.solid
              ),
              //圆角
              // borderRadius: BorderRadius.circular(16.0),
              //阴影
              boxShadow: [
                BoxShadow(
                  offset: Offset(6.0,7.0),
                  color: Colors.pink,
                  blurRadius: 25.0,
                  spreadRadius: -9.0
                ),
              ],
              //圆形,不可和borderRadius同用
              shape: BoxShape.circle,
              //渐变效果
              gradient: LinearGradient(
                colors: [
                  Colors.pink[10],
                  Colors.pink[100],
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),

            ),
          )
        ],
      ),
    );
  }
}



//同行不同样式
class RichTextDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'RichText',
        style: TextStyle(
          color: Colors.deepOrangeAccent,
          fontSize: 34.0,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w100,

        ),
        children: [
          TextSpan(
            text: '.net',
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            )
          )
        ],
        
      ),
    );
  }
}


//文本
class TextDemo extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );
  
  @override
  Widget build(BuildContext context) {
    return Text(
      'data',
      textAlign: TextAlign.left,
      style: _textStyle,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }
}