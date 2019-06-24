import 'package:flutter/material.dart';
import 'package:yafei_flutter/model/post.dart';
class GridViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GridView'),elevation: 0.0,),
      body: Container(
        child: _gridViewbuilder(),
      ),
    );
  }
}

class _gridViewbuilder extends StatelessWidget {
  

  Widget _gridViewItembuilder(BuildContext context,int index){
    return Container(
      child:Image.network(
        posts[index].imageUrl,
        fit: BoxFit.cover,
      ) ,
      
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: posts.length,
      itemBuilder: _gridViewItembuilder,
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        //SliverGridDelegateWithFixedCrossAxisCount
        //对应 crossAxisCount 设置交叉轴方向个数
        // crossAxisCount: 3,

        //SliverGridDelegateWithMaxCrossAxisExtent
        //对应 maxCrossAxisExtent 主轴最大尺寸
        maxCrossAxisExtent: 250.0,
        
        crossAxisSpacing: 8.0,
        mainAxisSpacing: 8.0,

      ),
    );
  }
}

class _gridviewextent extends StatelessWidget {
  const _gridviewextent({Key key}) : super(key: key);

  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0,0.0),
          child: Text('item $index',style:TextStyle(fontSize:18.0,color:Colors.pink),),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.extent(
      //最大
      maxCrossAxisExtent: 150.0,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(50),
    );
  }
}




class _gridview extends StatelessWidget {
  const _gridview({Key key}) : super(key: key);

  List<Widget> _buildTiles(int length){
    return List.generate(length, (int index){
      return Container(
          color: Colors.grey[300],
          alignment: Alignment(0.0,0.0),
          child: Text('item $index',style:TextStyle(fontSize:18.0,color:Colors.pink),),
        );
    });
  }
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 16.0,
      mainAxisSpacing: 16.0,
      children: _buildTiles(50),
    );
  }
}