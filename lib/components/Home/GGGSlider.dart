import 'package:flutter/material.dart';

class GGGSlider extends StatefulWidget {
  GGGSlider({Key? key}) : super(key: key);

  @override
  _GGGSliderState createState() => _GGGSliderState();
}

class _GGGSliderState extends State<GGGSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 300,
      alignment: Alignment.center,
      child: Text("轮播图", style: TextStyle(color: Colors.white, fontSize: 30),
    )
    );
  }
}