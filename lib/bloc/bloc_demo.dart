import 'package:flutter/material.dart';
import 'package:yafei_flutter/bloc/counter_bloc_demo.dart';

class BlocDemo extends StatelessWidget {
  const BlocDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BLoc'),
      ),
      body: CounterBlocDemo(),
      floatingActionButton: CounterActionButton(),
    );
  }
}