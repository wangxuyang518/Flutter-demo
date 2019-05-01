import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter1/model/TokenModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class BlocLoginProvider extends Bloc<Map, String> {
  @override
  String get initialState => "网络请求结果";

  BlocLoginProvider() {}

  @override
  Stream<String> mapEventToState(Map event)async* {
    Future<String> f = request1(event);
    yield* f.asStream();
  }
  Future<String> request1(Map m) async {
    var header = {
      "Authorization": "Basic d2ViQXBwOndlYkFwcA==",
    };
    // Observable<Response<String>>response= await   Observable(Dio()
    //       .post<String>("http://183.62.140.7:30099//zuul/api-auth/oauth/token",
    //           queryParameters: m, options: Options(headers: header))
    //       .asStream());
    // response.listen((rs) {
    //   if (rs.statusCode == 200) {
    //     print("success");
    //     return Future.value("1111");
    //   } else {
    //     print("error");
    //     return Future.value("22222");
    //   }
    // });
      Response<String> rs = await Dio().post<String>(
          "http://*****:30099//zuul/api-auth/oauth/token",
          queryParameters: m,
          options: Options(headers: header));
      print("执行完毕");
      if (rs.statusCode == 200) {
        print("success");
        return Future.value(rs.data);
      } else {
        print("error");
        return Future.value("error");
      }
    }
}
