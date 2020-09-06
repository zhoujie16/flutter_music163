import 'package:flutter/material.dart';
import 'package:flutter_music163/common/http_util.dart';

class RankDetail extends StatefulWidget {
  @override
  _RankDetailState createState() => _RankDetailState();
}

HttpUtil _httpUtil = HttpUtil();

class _RankDetailState extends State<RankDetail> {
  Map _playlist; // 榜单信息

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // 请求数据
    String url = "/playlist/detail?id=19723756";
    _httpUtil.get(url).then((data) {
      // print(url);
    });
  }

  _buildListView() {
    return Container(
      child: Text('测试'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('榜单详情'),
      ),
      body: Container(child: Text('测试')),
    );
  }
}
