import 'package:flutter/material.dart';
import 'package:yafei_flutter/model/post.dart';
class RouteIndexPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: AppBar(
            title: Text('Route'),
            bottom: TabBar(
                    unselectedLabelColor: Colors.black38,
                    indicatorColor: Colors.black54,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 1.0,
                    tabs: <Widget>[
                        Tab(icon: Icon(Icons.local_florist),),
                        Tab(icon: Icon(Icons.change_history),),
                        Tab(icon: Icon(Icons.directions_bike),),
                        Tab(icon: Icon(Icons.list),),
                    ],      
                ),  
          ),
          body: TabbarViewDemo(),

        ),
    );
  }
}

class TabbarViewDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return TabBarView(
            children: <Widget>[
              CustomScrollView(
                slivers: <Widget>[
                  SliverSafeArea(
                    sliver: SliverPadding(
                      padding: EdgeInsets.all(8.0),
                      sliver: SliverListDemo(),
                      
                    ),
                  )
                ],
              ),
              Icon(
                Icons.change_history,
                size: 128.0,
                color: Colors.black12,
              ),
              Icon(
                Icons.directions_bike,
                size: 128.0,
                color: Colors.black12,
              ),
              Icon(
                Icons.list,
                size: 128.0,
                color: Colors.black12,
              ),
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