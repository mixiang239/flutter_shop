import 'package:flutter/material.dart';

class GGGMoreList extends StatefulWidget {
  GGGMoreList({Key? key}) : super(key: key);

  @override
  _GGGMoreListState createState() => _GGGMoreListState();
}

class _GGGMoreListState extends State<GGGMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      // 网格是两列
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10
      ), 
      itemBuilder: (context, index) {
        return Container(
          child: Text("商品", style: TextStyle(color: Colors.white),),
          color: Colors.blue,
          alignment: Alignment.center,
        ); 
      }
    );
  }
}