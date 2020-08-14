// 其他榜单
import 'package:flutter/material.dart';
import 'rank_title.dart';
import 'rank_list_card.dart';

class OtherRankPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          RankTitle(),
          Container(
//            width: 375,
            child: Wrap(
              spacing: 10,
runSpacing: 10,
//              alignment: WrapAlignment.spaceBetween,
              children: [
                RankListCard(),
                RankListCard(),
                RankListCard(),
                RankListCard(),
                RankListCard(),
                RankListCard(),
                RankListCard(),
                RankListCard(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
