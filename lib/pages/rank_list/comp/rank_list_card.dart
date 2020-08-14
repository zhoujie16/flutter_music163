import 'package:flutter/material.dart';
import 'package:flutter_music163/pages/rank_detail/main.dart';

class RankListCard extends StatelessWidget {
  Map _rankInfo;

  RankListCard(this._rankInfo);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var id = _rankInfo['id'];
        print('card tap ${id}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RankDetail(),
          ),
        );
      },
      child: Container(
        width: 110,
        height: 110,
        child: Image.network(
          _rankInfo["coverImgUrl"],
          width: 110,
          height: 110,
        ),
      ),
    );
  }
}
