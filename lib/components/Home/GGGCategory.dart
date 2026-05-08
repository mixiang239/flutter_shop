import 'package:flutter/material.dart';

class GGGCategory extends StatefulWidget {
  GGGCategory({Key? key}) : super(key: key);

  @override
  _GGGCategoryState createState() => _GGGCategoryState();
}

class _GGGCategoryState extends State<GGGCategory> {
  @override
  Widget build(BuildContext context) {
    // return ListView();
    // 返回一个横向滚动的组件
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // 横向排列
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            width: 80,
            height: 100,
            color: Colors.blue,
            child: Text("分类$index", style: TextStyle(color: Colors.white),),
            margin: EdgeInsetsDirectional.symmetric(horizontal: 10),
          );
        }
      )
    );
  }
}