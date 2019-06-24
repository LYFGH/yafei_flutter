import 'package:flutter/material.dart';

//抽屉视图
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