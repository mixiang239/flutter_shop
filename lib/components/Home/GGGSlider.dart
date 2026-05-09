import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hm_shop/viewmodels/home.dart';

class GGGSlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  GGGSlider({Key? key, required this.bannerList}) : super(key: key);

  @override
  _GGGSliderState createState() => _GGGSliderState();
}

class _GGGSliderState extends State<GGGSlider> {

  Widget _getSlider() {
    // 在Flutter中获取屏幕宽度的方法
    final double screenWidth = MediaQuery.of(context).size.width; // 屏幕宽度
    // 返回轮播图插件
    // 根据数据渲染的不同的轮播选项
    return CarouselSlider(
      items: List.generate(widget.bannerList.length, (index) {
        return Image.network(
          widget.bannerList[index].imgUrl,
          fit: BoxFit.cover, // 全覆盖
          width: screenWidth,
        );
      }), 
      options: CarouselOptions(
        // height: 300,
        viewportFraction: 1, // 每一页占视口（屏幕）的比例
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.blue,
    //   height: 300,
    //   alignment: Alignment.center,
    //   child: Text("轮播图", style: TextStyle(color: Colors.white, fontSize: 20),)
    // );
    // Stack -> 轮播图 搜索框 指示灯导航
    return Stack(
      children: [_getSlider(), ],
    );
  }
}