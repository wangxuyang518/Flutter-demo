import 'package:flutter/material.dart';

class UITest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var bottomNavigationBarItem =
        BottomNavigationBarItem(icon: Icon(Icons.call));
    return Container(
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Image.asset("lib/image/test.png"),
          Padding(
            padding: EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "1222222222222",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[500],
                      ),
                    ),
                    Text(
                      "33333333333",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey[500],
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    new Icon(
                      Icons.star,
                      color: Colors.red[500],
                    ),
                    Text(
                      "41",
                      style: TextStyle(fontSize: 17, color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Icon(Icons.call),
                    Text(
                      "手机",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[500],
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.home),
                    Text(
                      "首页",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[500],
                      ),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.gps_fixed),
                    Text(
                      "定位",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[500],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(30),
            child: TextField(
              maxLines: 10,
              decoration: InputDecoration(
              hintText: "请输入数据",
              border: InputBorder.none,
            )),
          )
        ],
      ),
    );
  }
}
