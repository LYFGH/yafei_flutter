import 'package:flutter/material.dart';
import '../basic_widget/basic_demo.dart';
class BasicWidgetDemo extends StatelessWidget {
  const BasicWidgetDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabController'),
            //阴影
            elevation: 0.0,
            // leading: IconButton(
            //   icon: Icon(Icons.menu),
            //   tooltip: 'Navigration',
            //   onPressed: (){
            //     debugPrint('点击了左边');
            //   },
            // ),
            actions: <Widget>[
              IconButton(
              icon: Icon(Icons.search),
              tooltip: 'Search',
              onPressed: (){
                debugPrint('点击了搜索');
              },
            ),
            ],
            bottom: TabBar(
                unselectedLabelColor: Colors.black38,
                indicatorColor: Colors.black54,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorWeight: 1.0,
                tabs: <Widget>[
                    Tab(icon: Icon(Icons.local_florist),),
                    Tab(icon: Icon(Icons.change_history),),
                    Tab(icon: Icon(Icons.directions_bike),),
                ],      
            ),
          ),
          
          body: TabbarViewDemo(),
          // drawer: 左边,
          // endDrawer: 右边抽屉,
          
    ),
    );
  }
}

class TabbarViewDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return TabBarView(
            children: <Widget>[
              Icon(
                Icons.local_florist,
                size: 128.0,
                color: Colors.black12,
                
              ),
              BasicDemo(),
              Icon(
                Icons.directions_bike,
                size: 128.0,
                color: Colors.black12,
              ),
            ],
    );
  }
}