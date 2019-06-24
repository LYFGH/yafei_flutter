import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:yafei_flutter/model/post.dart';


class ViewDemo extends StatelessWidget {
  const ViewDemo({Key key}) : super(key: key);

  Widget _pageItemBuilder(BuildContext context, int index){
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(
            posts[index].imageUrl,
            fit:BoxFit.cover,
          ),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                posts[index].title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                posts[index].author,
                
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('视图'),),
      body: PageView.builder(
        itemCount: posts.length,
        itemBuilder: _pageItemBuilder,
      ),
    );
  }
}








//pageView
class PageViewDemo extends StatelessWidget {
  const PageViewDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      //设置自动分页
      // pageSnapping: false,
      //设置反向
      // reverse: true,
      //滚动方向
      // scrollDirection: Axis.vertical,
      controller:PageController(
        initialPage: 1,
        keepPage: false,
        viewportFraction: 0.85
      ) ,

      children: <Widget>[
        Container(
          color: Colors.brown[600],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'one',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.brown[300],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'two',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
        Container(
          color: Colors.brown[100],
          alignment: Alignment(0.0, 0.0),
          child: Text(
            'three',
            style:TextStyle(fontSize:32.0,color:Colors.white),
          ),
        ),
      ],
    );
  }
}