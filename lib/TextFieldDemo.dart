import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextFieldDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            onPressed: () {
              showAlertDialog(context);
              print("click");
            },
            color: Colors.blue,
            colorBrightness: Brightness.dark,
            child: Text(
              "显示AlertDialog弹出框",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          ),
          RaisedButton(
            onPressed: () {
              showAlertDialog1(context);
              print("click");
            },
            color: Colors.blue,
            colorBrightness: Brightness.dark,
            child: Text(
              "显示SimpleDialog弹出框",
              style: TextStyle(fontSize: 16, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  void showAlertDialog(BuildContext context1) {
    showDialog(
      context: context1,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: Text("hello world"),
          content: Text("1222222222222222222"),
          actions: <Widget>[
            RaisedButton(
              onPressed: () {
                print("click");
                Navigator.pop(context);
              },
              color: Colors.blue,
              colorBrightness: Brightness.dark,
              child: Text(
                "确定",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.pop(context);
                print("click");
              },
              color: Colors.blue,
              colorBrightness: Brightness.dark,
              child: Text(
                "取消",
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }

  void showAlertDialog1(BuildContext context1) {
    showDialog(
      context: context1,
      builder: (BuildContext context) {
        return new SimpleDialog(
          title: Text("请选择横臂信息"),
          children: <Widget>[
            SimpleDialogOption(
              child: Text("横臂10m"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("横臂5m"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            SimpleDialogOption(
              child: Text("横臂7m"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
