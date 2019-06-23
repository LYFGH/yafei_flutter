import 'package:flutter/material.dart';
import '../model/post.dart';

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
          
          body: TabBarView(
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
          ),
          // drawer: 左边,
          // endDrawer: 右边抽屉,
          drawer: DrawerDemo(),
    ),
    );
  }
}

class DrawerDemo extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(0.0),
        children: <Widget>[
          // DrawerHeader(
          //   child: Text("header".toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100],
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text(
              'ceshi',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              '网址',
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                'https:resources.ninghao.org/images/wanghao.jpg',
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://resources.ninghao.org/images/candy-shop.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6), 
                  BlendMode.hardLight
                ),
              )
            ),
          ),


          ListTile(
            title: Text(
              'Message',
              textAlign: TextAlign.right,
              ),
            trailing: Icon(Icons.message,color: Colors.black12,size:22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Favorite',
              textAlign: TextAlign.right,
              ),
            trailing: Icon(Icons.favorite,color: Colors.black12,size:22.0,),
            onTap: () => Navigator.pop(context),
          ),
          ListTile(
            title: Text(
              'Settings',
              textAlign: TextAlign.right,
              ),
            trailing: Icon(Icons.settings,color: Colors.black12,size:22.0,),
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
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










class ListViewDemo extends StatelessWidget {
  
  Widget _listItemBuilder(BuildContext context,int index){
    return Container(
        color: Colors.white,
        margin: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            Image.network(posts[index].imageUrl),
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


