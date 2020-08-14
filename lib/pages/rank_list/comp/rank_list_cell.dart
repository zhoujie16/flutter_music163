import 'package:flutter/material.dart';

class RankListCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 0, top: 5, right: 0, bottom: 5),
      child: Row(
        children: [
          Container(
            child: Image.network(
              "https://s1.ax1x.com/2020/08/14/dC62wR.th.png",
              width: 110,
              height: 110,
            ),
          ),
          Container(
            height: 110,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Text('xxx-xxx', style: TextStyle(fontSize: 18)),
                Text('xxx-xxx', style: TextStyle(fontSize: 18)),
                Text('xxx-xxx', style: TextStyle(fontSize: 18)),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
            ),
          )
        ],
      ),
    );
  }
}
