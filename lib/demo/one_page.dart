import 'package:flutter/material.dart';
import '../model/post.dart';


// class App extends StatelessWidget {
//   const App({Key key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'yafei_flutter',
//       home: OnePage(),
//       theme: ThemeData(
//         // primaryColor: Colors.yellow,
//         primarySwatch: Colors.yellow
//       ),
//     );
//   }
// }

//第一个
class OnePage extends StatelessWidget {
  const OnePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('起步入门'),
        //阴影
        elevation: 0.0,
      ),
      
      body: Home(),
       
    );
  }
}


class Home extends StatelessWidget {
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
        itemBuilder:_listItemBuilder,
      ),
    );
  }
}




class Hello extends StatelessWidget {
  const Hello({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          '起步入门',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.yellow,
          ),
        
        ),
      ),
    );
  }
}
