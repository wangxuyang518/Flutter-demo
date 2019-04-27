import 'dart:async';
import 'package:flutter1/model/TokenModel.dart';
import 'package:rxdart/rxdart.dart';
import 'package:dio/dio.dart';


class BlocLogin {


  StreamController<String>outStreamController=new StreamController<String>();
  Stream<String> get outStream =>outStreamController.stream;



  StreamController<Map>inStreamContrller=new StreamController<Map>();
  StreamSink<Map> get inStream=>inStreamContrller.sink;
  BlocLogin() {
  }


  login(Map<String,String>m){
    outStreamController.sink.add("正在进行网络请求");

    print("login");
    var header = {
      "Authorization": "Basic d2ViQXBwOndlYkFwcA==",
    };
    Observable
    .just(m)
    .flatMap<Response<dynamic>>((data){
          return  Observable(Dio()
         .post("http://183.62.140.7:30099//zuul/api-auth/oauth/token",
          queryParameters: m, options: Options(headers: header)).asStream());
    }).listen((it){
            TokenModel token = TokenModel.fromJson(it.data);
            if(token!=null&&token.accessToken!=null){
                outStreamController.sink.add(token.accessToken);
            }else{
                outStreamController.sink.add(it.data.toString());
            }
    },onError: (e){
      outStreamController.sink.add(e.toString());
    });
  }
}
