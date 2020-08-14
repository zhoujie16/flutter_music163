
// 官方榜
import 'package:flutter/material.dart';
import 'rank_title.dart';
import 'rank_list_cell.dart';

class MainRankPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RankTitle(),
          RankListCell(),
          RankListCell(),
          RankListCell(),
          RankListCell(),
        ],
      ),
    );
  }
}
