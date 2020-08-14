import 'package:dio/dio.dart';

class HttpUtil {
  Dio _dio;

  HttpUtil() {
    this._dio = Dio();
    this._dio.options.baseUrl = "http://music.163.zhoujie16.cn";
  }

  Future get(String url, [Map params]) async {
    Response response = await _dio.get(url, queryParameters: params);
    Map data = response.data;
    var code = data["code"];
    if (code != 200) {
      return;
    }
    return data;
  }
}
