import 'package:flutter/material.dart';
import '../Base.dart';

class RecommendState extends Base<Recommend> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('球员推荐')
      ),
      body:new Icon(Icons.ac_unit),
      bottomSheet: this.createButtonBar(context)
    );
  }
}
class Recommend extends StatefulWidget {
  @override
  createState() => new RecommendState();
}