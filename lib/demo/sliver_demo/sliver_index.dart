import 'package:flutter/material.dart';
import 'package:yafei_flutter/model/post.dart';

class SliverIndexPage extends StatelessWidget {
  const SliverIndexPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliver'),
      ),
      body: SliverDemo(),
    );
  }
}

class SliverDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          // title: Text("SliverAppBar"),
          // pinned: true,//不滚动
          floating: true,//跟随滚动
          expandedHeight: 190.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              'FlexibleSpaceBar',
              style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 3.0,
                fontWeight: FontWeight.w400,
              ),
              
            ),
            background: Image.network(
              'https://resources.ninghao.org/images/dragon.jpg',
              fit: BoxFit.cover,
            ),
          ),

        ),
        SliverSafeArea(
          sliver: SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverListDemo(),
            
          ),
        )
      ],
    );
  }
}

class SliverListDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context,int index){
                return Padding(
                  padding: EdgeInsets.only(bottom: 32.0),
                  child: Material(
                    borderRadius: BorderRadius.circular(12.0),
                    elevation: 14.0,
                    shadowColor: Colors.grey.withOpacity(0.5),

                    child: Stack(
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 16/9,
                          child: Container(
                            
                            child: Image.network(
                              posts[index].imageUrl,
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          )
                        ),
                        Positioned(
                          top: 32.0,
                          left: 32.0,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                posts[index].title,
                                style: TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.white
                                ),
                              ),
                              Text(
                                posts[index].author,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  color: Colors.white
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                );
            },
            childCount: posts.length,
          ),
      );
  }
}





class SliverGridDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.6,
            
          ),
          delegate: SliverChildBuilderDelegate(
            (BuildContext context,int index){
                return Container(
                  child: Image.network(
                    posts[index].imageUrl,
                    fit: BoxFit.cover,
                  ),
                );
            },
            childCount: posts.length,
          ),
        );
  }
}