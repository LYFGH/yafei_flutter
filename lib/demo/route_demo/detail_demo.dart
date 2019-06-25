import 'package:flutter/material.dart';
import 'package:yafei_flutter/model/post.dart';

class DetailModelDemo extends StatelessWidget {
  final Post post;
  const DetailModelDemo({Key key,this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情'),),
      body: Container(
        child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16.0/9.0,
                  child: Image.network(
                    post.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16.0,),
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  post.author,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(height: 16.0,),
                Text(
                  post.description,
                  style: Theme.of(context).textTheme.subhead,
                ),
              ],
            ),
      ),
    );
  }
}