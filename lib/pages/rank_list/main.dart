// 排行榜页面

import 'package:flutter/material.dart';
import 'comp/main_rank_panel.dart';
import 'comp/other_rank_panel.dart';
import 'package:flutter_music163/common/http_util.dart';

HttpUtil _httpUtil = HttpUtil();

class RankList extends StatefulWidget {
  @override
  _RankListState createState() => _RankListState();
}

class _RankListState extends State<RankList> {
  // ignore: non_constant_identifier_names
  List _rankList_main = [];
  // ignore: non_constant_identifier_names
  List _rankList_other = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _httpUtil.get("/toplist/detail").then((data) {
      List rankList = data["list"];
      setState(() {
        _rankList_main = rankList.sublist(0, 4);
        _rankList_other = rankList.sublist(5, rankList.length);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('排行榜'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 10, right: 10),
        child: ListView(
          children: [
            MainRankPanel(_rankList_main),
            OtherRankPanel(_rankList_other),
          ],
        ),
      ),
    );
  }
}
