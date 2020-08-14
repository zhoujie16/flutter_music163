import 'package:flutter/material.dart';
import 'comp/main_rank_panel.dart';
import 'comp/other_rank_panel.dart';

class RankList extends StatefulWidget {
  @override
  _RankListState createState() => _RankListState();
}

class _RankListState extends State<RankList> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
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
            MainRankPanel(),
            OtherRankPanel(),
          ],
        ),
      ),
    );
  }
}
