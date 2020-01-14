import 'package:flutter/material.dart';


class ShareState extends State<Share> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      body:  new Text("交流分享")
    );
  }
}


class Share extends StatefulWidget {
  @override
  createState() => new ShareState();
}
