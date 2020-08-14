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

    _httpUtil.get("/playlist/detail?id=19723756").then((data) {
      var playlist = data["playlist"];
      // var tracks = playlist["playlist"];
      // print(data['playlist']);
      setState(() {
        _playlist = data['playlist'];
      });
    });
  }

  _buildListView(){
    var tracks = _playlist['tracks'];



  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('榜单详情'),
      ),
      body: Container(
        child: ListView(
          children: _buildListView(),
        )
      ),
    );
  }
}
