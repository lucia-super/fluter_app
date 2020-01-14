import 'package:flutter/material.dart';

abstract class Base<T extends StatefulWidget> extends State<T> {
  createButtonBar (BuildContext context) {
    return ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        children: [
          _createSingleButton('返回', () {
            Navigator.pop(context);
          }),
          _createSingleButton('新增训练', () {})
        ]
    );
  }

  _createSingleButton(text, Function callback) {
    return  FlatButton(
        color: Colors.blue,
        textColor: Colors.white,
        disabledColor: Colors.grey,
        disabledTextColor: Colors.black,
        padding: EdgeInsets.all(8.0),
        splashColor: Colors.blueAccent,
        onPressed: callback,
        child: Text(text)
    );
  }
}
