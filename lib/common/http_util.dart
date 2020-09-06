import 'package:dio/dio.dart';
import 'dart:convert';

class HttpUtil {
  Dio _dio;

  HttpUtil() {
    this._dio = Dio();
    this._dio.options.baseUrl = "http://music.163.zhoujie16.cn";
  }

  Future get(String url, [Map params]) async {
    Response response = await _dio.get(url, queryParameters: params);
    Map data = response.data;
    print("请求 url:");
    print(url);
    print("请求 参数:");
    print(params);
    print("请求 响应:");
    print(response);
    print(json.encode(response.data));
    var code = data["code"];
    if (code != 200) {
      return;
    }
    return data;
  }
}
