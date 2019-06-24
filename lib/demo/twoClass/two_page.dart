import 'package:flutter/material.dart';
import '../../model/post.dart';
import '../twoClass/drawer_demo.dart';
import '../twoClass/bottom_navigation_bar.dart';
//
class TwoPage extends StatelessWidget {
  

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
            bottom: TabbarDemo(),
          ),
          
          body: TabbarViewDemo(),
          // drawer: 左边,
          // endDrawer: 右边抽屉,
          drawer: DrawerDemo(),
          bottomNavigationBar: BottomNavigationbarDemo()
    ),
    );
  }
}

class TabbarDemo extends TabBar {
  @override
  Widget build(BuildContext context) {
    return TabBar(
        unselectedLabelColor: Colors.black38,
        indicatorColor: Colors.black54,
        indicatorSize: TabBarIndicatorSize.label,
        indicatorWeight: 1.0,
        tabs: <Widget>[
            Tab(icon: Icon(Icons.local_florist),),
            Tab(icon: Icon(Icons.change_history),),
            Tab(icon: Icon(Icons.directions_bike),),
        ],      
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
            ],
    );
  }
}





// class TwoPage extends StatelessWidget {


//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('界面结构 '),
//         //阴影
//         elevation: 0.0,
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           tooltip: 'Navigration',
//           onPressed: (){
//             debugPrint('点击了左边');
//           },
//         ),
//         actions: <Widget>[
//           IconButton(
//           icon: Icon(Icons.search),
//           tooltip: 'Search',
//           onPressed: (){
//             debugPrint('点击了搜索');
//           },
//          ),
//          IconButton(
//           icon: Icon(Icons.more_horiz),
//           tooltip: '更多',
//           onPressed: (){
//             debugPrint('点击了更多');
//           },
//          ),
//         ],
//       ),
      
//       body: ListViewDemo(),
       
//     );
//   }
// }













