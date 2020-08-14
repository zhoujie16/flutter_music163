// 其他榜单
import 'package:flutter/material.dart';
import 'rank_title.dart';
import 'rank_list_card.dart';

class OtherRankPanel extends StatelessWidget {
  List _rankList;

  OtherRankPanel(List rankList) {
    this._rankList = rankList;
  }

  List<Widget> _buildRankList() {
    List<Widget> list = [];
    _rankList.forEach((element) {
      list.add(RankListCard(element));
    });
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RankTitle(),
          Container(
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: _buildRankList(),
            ),
          )
        ],
      ),
    );
  }
}
