import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter1/BlocLogin.dart';
import 'package:flutter1/model/TokenModel.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:rxdart/rxdart.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme:
          ThemeData(primarySwatch: Colors.blue, primaryColorDark: Colors.red),
      home: Scaffold(
        backgroundColor: Colors.white,
        body: ParentWidget(),
        resizeToAvoidBottomPadding: false, //输入框抵住键盘
      ),
    );
  }
}

/**
 * 父控件
 */
class ParentWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new ParentWidgetState();
  }
}

class ParentWidgetState extends State<ParentWidget> {
  String userName = "";
  String passWord = "";
  String result = "显示请求结果";
  BlocLogin mBlocLogin=new BlocLogin();
  @override
  Widget build(BuildContext context) {
    print("build");
    return Container(
      child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "lib/image/logo.png",
              width: 80,
              height: 80,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 8, 0, 0),
              child: Text(
                "福建闽侯",
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
              child: TextField(
                maxLines: 1,
                onChanged: (s) {
                  userName = s;
                  print(s);
                },
                autofocus: false,
                decoration: InputDecoration(
                    labelText: "账号",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                    hintText: "请输入账号",
                    hintStyle: TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    )),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(60, 0, 60, 0),
              child: TextField(
                maxLines: 1,
                autofocus: false,
                obscureText: true,
                onChanged: (s) {
                  passWord = s;
                  print(s);
                },
                decoration: InputDecoration(
                    labelText: "密码",
                    labelStyle: TextStyle(fontSize: 15, color: Colors.black),
                    hintText: "请输入密码",
                    hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                    )),
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(60, 20, 60, 0),
                    child: RaisedButton(
                      onPressed: () {
                          Map<String,String> m={
                     "username": userName,
                       "password": passWord,
                      "grant_type": "password"
                          };
                          mBlocLogin.login(m);
                      },
                      highlightColor: Color(0xFF1565C0),
                      color: Color(0xFF42A5F5),
                      child: Text(
                        "登录",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            StreamBuilder<String>(
            stream: mBlocLogin.outStream,
            initialData: "网络请求的数据结果",
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              return Text(
                snapshot.data,
                style:TextStyle(fontSize: 16),
                
              );
            })
          ],
        ),
    );
  }
}



  // void request(BuildContext context) async {
  //   showDialog1(context);
  //   TokenModel token;
  //   var params = {
  //     "username": userName,
  //     "password": passWord,
  //     "grant_type": "password"
  //   };
  //   var header = {
  //     "Authorization": "Basic d2ViQXBwOndlYkFwcA==",
  //   };
  //   await Dio()
  //       .post<TokenModel>("http://183.62.140.7:30099//zuul/api-auth/oauth/token",
  //           queryParameters: params, options: Options(headers: header))
  //       .then((Response<TokenModel> r){
  //     if (r.statusCode == 200) {
  //       token = r.data;
  //       if (token.accessToken != null) {
  //         print(token.accessToken);
  //       }
  //     }
  //   }).catchError(() {
  //     print("异常");
  //   }).whenComplete(() {
  //     setState(() {
  //       if (token.accessToken == null) {
  //         result = "请求失败";
  //       } else {
  //         result = "token值" + token.accessToken;
  //         saveTokenValue(token.accessToken);
  //       }
  //     });
  //     Navigator.pop(context);
  //   });
  // }


  // void requestStream(BuildContext context) async {
  //   showDialog1(context);
  //   var params = {
  //     "username": userName,
  //     "password": passWord,
  //     "grant_type": "password"
  //   };
  //   var header = {
  //     "Authorization": "Basic d2ViQXBwOndlYkFwcA==",
  //   };
    
  //   Observable(Dio()
  //       .post<TokenModel>("http://183.62.140.7:30099//zuul/api-auth/oauth/token",
  //           queryParameters: params, options: Options(headers: header))
  //           .asStream())
  //           .flatMap((data){
  //               return Observable.just(data.data);
  //           }).listen((data){
  //             print(data.accessToken);  
  //           },onError: (){
  //              print("error"); 
  //           });
          
            
 
       
  // }



  // saveTokenValue(String token) async{
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   prefs.setString("token", token);
  //   print(prefs.getString("token"));
  // }
