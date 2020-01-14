import 'package:flutter/material.dart';


class MineState extends State<Mine> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      body:  new Text("我的")
    );
  }
}


class Mine extends StatefulWidget {
  @override
  createState() => new MineState();
}
