import 'package:flutter/material.dart';

class RankList extends StatefulWidget {
  @override
  _RankListState createState() => _RankListState();
}

class _RankListState extends State<RankList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text('榜单详情'),
        ),
      ),
    );
  }
}
