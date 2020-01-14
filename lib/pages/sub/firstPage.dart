import 'package:flutter/material.dart';
import 'dart:async';

class FirstPageState extends State<FirstPage> {
  var images = [
    'images/sea.png',
    'images/star.jpg',
    'images/road.jpg',
    'images/horse.jpg',
    'images/cat.jpg',
  ];
  var currentImage = 0;
  double opacity = 0;

  @override
  bool get mounted => super.mounted;

  FirstPageState() {
    new Timer.periodic(const Duration(seconds: 3), (timer) {
      if(mounted) {
        setState(() {
          if (currentImage != 4) {
            currentImage += 1;
          } else {
            currentImage = 0;
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      backgroundColor: Colors.grey[100],
      body:  new ListView(
        children: [
          new Image.asset(images[currentImage],  height: 240.0, fit: BoxFit.cover),
          new Container(
              margin: EdgeInsets.only(top: 10),
              decoration: new BoxDecoration(
                  color: Colors.white,
              ),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    new Container(
                        height: 61.0,
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        decoration: new BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(width: 1.0, color: Colors.grey[100])
                            )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                                "学校",
                                style: TextStyle(fontSize: 20)
                            ),
                            new Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey
                            )
                          ]
                        )
                    ),
                    new Container(
                        margin: const EdgeInsets.symmetric(vertical: 20.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildChildButton('球员档案', 71, Colors.blue),
                              _buildChildButton('教练档案', 27, Colors.green),
                            ]
                        )
                    ),
                  ]
              )
          ),
          _buildButtonSection("训练计划", Icons.accessibility, true, "/plan"),
          _buildButtonSection("测试列表", Icons.text_fields, false, "/test"),
          _buildButtonSection("球员推荐", Icons.record_voice_over, false, "/recommend"),
        ]
      )
    );
  }

  // 三个按钮菜单
  Container _buildButtonSection(String text, IconData icon, bool isNeed, String linkTo) {
    double marginTop = isNeed ? 10.0 : 0.0;
    return  new Container(
        margin: EdgeInsets.only(top: marginTop),
        height: 61.0,
        decoration: new BoxDecoration(
          color: Colors.white,
          border: Border(
            bottom: BorderSide(width: 1.0, color: Colors.grey[100])
          )
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    new Icon(
                        icon,
                        color: Colors.grey
                    ),
                    new Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 20)
                      )
                    ),
                  ]
                )
              ),
              new IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Colors.grey,
                onPressed: () {
                  Navigator.pushNamed(context, linkTo);
                }
              )
            ]
        )
    );
  }

  // 两个卡片按钮
  Container _buildChildButton(String text, int number, Color color) {
    return new Container(
        transform: Matrix4.rotationZ(0.2),
        height: 80.0,
        decoration: new BoxDecoration(
            color: color,
            borderRadius: new BorderRadius.circular(5.0)
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                  text,
                  style: TextStyle(fontSize: 20)
              ),
              Text(
                  '11',
                  style: TextStyle(fontSize: 20)
              ),
            ]
        )
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  createState() => new FirstPageState();
}
