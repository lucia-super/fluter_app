import 'package:flutter/material.dart';
import 'pages/home.dart';
import 'package:flutter_app/pages/sub/plan/index.dart';
import 'package:flutter_app/pages/sub/test/index.dart';
import 'package:flutter_app/pages/sub/recommend/index.dart';

void main() => runApp(new MyApp());


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: '首页',
      home:  new DefaultTabController(length: 4, child: new Home()),
      routes: <String, WidgetBuilder>{
        '/plan': (BuildContext context) => Plan(),
        '/test': (BuildContext context) => Test(),
        '/recommend': (BuildContext context) => Recommend()
      },
    );
  }
}
