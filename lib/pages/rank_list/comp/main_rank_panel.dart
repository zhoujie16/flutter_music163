// 官方榜
import 'package:flutter/material.dart';
import 'rank_title.dart';
import 'rank_list_cell.dart';

class MainRankPanel extends StatelessWidget {
  List _rankList;

  MainRankPanel(List rankList) {
    this._rankList = rankList;
  }

  List<Widget> _buildRankList(List rankList) {
    List<Widget> list = [];
    list.add(RankTitle());
    rankList.forEach((element) {
      list.add(RankListCell(element));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: _buildRankList(_rankList),
      ),
    );
  }
}
