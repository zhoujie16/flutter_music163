import 'package:flutter/material.dart';
import 'package:flutter_music163/pages/rank_detail/main.dart';

class RankListCell extends StatelessWidget {
  Map _rankInfo;

  RankListCell(Map rankInfo) {
    this._rankInfo = rankInfo;
  }

  _buildTracksText() {
    List tranks = _rankInfo["tracks"];
    List<Widget> tranksWidget = [];

    for (var i = 0; i < tranks.length; i++) {
      var track = tranks[i];
      var text = "${i + 1}. ${track["first"]} - ${track["second"]}";
      tranksWidget.add(Text(text, style: TextStyle(fontSize: 13)));
    }
    return tranksWidget;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        var id = _rankInfo['id'];
        print('cell tap ${id}');
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RankDetail(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
        child: Row(
          children: [
            Container(
              child: Image.network(
                _rankInfo["coverImgUrl"],
                width: 110,
                height: 110,
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                height: 110,
                padding: EdgeInsets.all(10),
                child: Column(
                  children: _buildTracksText(),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
