// 排行榜标题

import 'package:flutter/material.dart';

class RankTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          '官方榜',
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      )
    ]);
  }
}
