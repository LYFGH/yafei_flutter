import 'package:flutter/material.dart';
import 'package:yafei_flutter/model/post.dart';
import 'detail_demo.dart';
class EasyRouteDemo extends StatelessWidget {
  const EasyRouteDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Route'), 
            leading: FlatButton(
              child: Icon(Icons.navigate_before),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          body: ListViewDemo()

        );
  }
}

class testDemo extends StatelessWidget {
  const testDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('home'),
                  onPressed: null,
                ),
                FlatButton(
                  child: Text('home'),
                  onPressed: (){
                    //未设置
                    // Navigator.of(context).push(
                    //   MaterialPageRoute(
                    //     builder: (BuildContext context)=>AboutSubView(title: "About",),
                    //   ),
                    // );
                    Navigator.pushNamed(context, '/about');

                  },
                ),
              ],
            ),
          );
  }
}


class AboutSubView extends StatelessWidget {
  final String title;
  const AboutSubView({Key key,this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Route'), 
          ),
          body: Container(
            child: Text('$title'),
          ),
        );
  }
}

class ListViewDemo extends StatelessWidget {
  
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Stack(
          children: <Widget>[
            Column(
              
              children: <Widget>[
                AspectRatio(
                  aspectRatio: 16.0/9.0,
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 16.0,),
                Text(
                  posts[index].title,
                  style: Theme.of(context).textTheme.title,
                ),
                Text(
                  posts[index].author,
                  style: Theme.of(context).textTheme.subhead,
                ),
                SizedBox(height: 16.0,),
              ],
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  splashColor: Colors.white.withOpacity(0.3),
                  highlightColor:Colors.white.withOpacity(0.1), 
                  onTap: (){
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => DetailModelDemo(post: posts[index]),
                      ),
                    );
                  },
                  
                ),
              ),
            )
          ],
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: posts.length,
        itemBuilder: _listItemBuilder,
      ),
    );
  }
}