import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:async';

class RxDartDemo extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RXdart'),
      ),
      body: RXdartDemoHome(),
    );
  }
}

class RXdartDemoHome extends StatefulWidget {
  RXdartDemoHome({Key key}) : super(key: key);

  _RXdartDemoHomeState createState() => _RXdartDemoHomeState();
}

class _RXdartDemoHomeState extends State<RXdartDemoHome> {
  PublishSubject<String> _textFieldSubject;

  @override
  void initState() {
    
    super.initState();

    _textFieldSubject = PublishSubject<String>();

    _textFieldSubject
      // .map((item) => 'item: $item')
      // .where((item) => item.length > 9)
      //延迟执行
      .debounce(Duration(milliseconds: 500))
      .listen((data) => print(data));

    ///Observable方式
    // Observable<String> _observable =
    //     // Observable(Stream.fromIterable(['hello', '您好']));
    //     // Observable.fromFuture(Future.value('hello ~'));
    //     // Observable.fromIterable(['hello', '您好']);
    //     // Observable.just('hello ~');
    //     Observable.periodic(Duration(seconds: 3), (x) => x.toString());

    // _observable.listen(print);

    // PublishSubject<String> _subject = PublishSubject<String>();
    // BehaviorSubject<String> _subject = BehaviorSubject<String>();
    // ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);

    // _subject.add('hello');
    // _subject.add('hola');
    // _subject.add('hi');
    // _subject.listen((data) => print('listen 1: $data'));
    // _subject.listen((data) => print('listen 2: ${data.toUpperCase()}'));

    // _subject.close();





  }

  @override
  Widget build(BuildContext context) {
    return Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.black,
        ),
        child: TextField(
          decoration: InputDecoration(
            labelText: 'Title',
            filled: true,
          ),
          onChanged: (value){
            _textFieldSubject.add('input: $value');
          },
          onSubmitted: (value){
            _textFieldSubject.add('submit: $value');
          },
        ),
       
    );
  }

  @override
  void dispose() {
    _textFieldSubject.close();
    super.dispose();
    
  }
}