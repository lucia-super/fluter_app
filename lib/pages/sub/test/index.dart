import 'package:flutter/material.dart';
import '../Base.dart';

class TestState extends Base<Test> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('测试列表')
      ),
      body:new Icon(Icons.ac_unit),
      bottomSheet: this.createButtonBar(context)
    );
  }
}
class Test extends StatefulWidget {
  @override
  createState() => new TestState();
}