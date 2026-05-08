import 'package:flutter/material.dart';

class GGGHot extends StatefulWidget {
  GGGHot({Key? key}) : super(key: key);

  @override
  _GGGHotState createState() => _GGGHotState();
}

class _GGGHotState extends State<GGGHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text("爆款推荐", style: TextStyle(color: Colors.white),),
    );
  }
}