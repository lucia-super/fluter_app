
import 'package:flutter/material.dart';
import 'sub/knowledge.dart';
import 'sub/firstPage.dart';
import 'sub/share.dart';
import 'sub/mine.dart';

class Choice {
  const Choice({ this.title, this.icon, this.key });
  final String title;
  final IconData icon;
  final String key;
}

const List<Choice> choices = const <Choice>[
  const Choice(title: '首页', icon: Icons.home, key: 'firstPage'),
  const Choice(title: '知识库', icon: Icons.favorite, key: 'knowledge'),
  const Choice(title: '交流分享', icon: Icons.message, key: 'share'),
  const Choice(title: '我的', icon: Icons.account_box, key: 'mine')
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({ Key key, this.choice}) : super(key: key);
  final Choice choice;
  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle = Theme.of(context).textTheme.display1;
    return new Card(
      color: Colors.white,
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            new Icon(choice.icon, size: 128.0, color: textStyle.color),
            new Text(choice.title, style: textStyle),
          ],
        ),
      ),
    );
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold (
      appBar: new AppBar(
        title: new Text('首页')
      ),
      body: new TabBarView(
        children: choices.map((Choice choice) {
          return new Padding(
            padding: const EdgeInsets.all(10.0),
            child: this._getSubpage(choice)
          );
        }).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
          color: Colors.blueAccent,
          child: new TabBar(
            tabs: choices.map((Choice choice) {
                return new Tab(
                  text: choice.title,
                  icon: new Icon(choice.icon),
                );
              }).toList())
      ),
//      floatingActionButton: FloatingActionButton(onPressed: null)
    );
  }

  StatefulWidget _getSubpage(Choice choice) {
    StatefulWidget sw;
    switch(choice.key) {
      case 'firstPage':
        sw = new FirstPage();
        break;
      case 'knowledge':
        sw = new Knowledges();
        break;
      case 'share':
        sw = new Share();
        break;
      case 'mine':
        sw = new Mine();
        break;
    }
    return sw;
  }
}

class Home extends StatefulWidget {
  @override
  createState() => new HomeState();
}