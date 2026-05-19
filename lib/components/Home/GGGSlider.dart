import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:hm_shop/viewmodels/home.dart';

class GGGSlider extends StatefulWidget {
  final List<BannerItem> bannerList;
  const GGGSlider({super.key, required this.bannerList});

  @override
  _GGGSliderState createState() => _GGGSliderState();
}

class _GGGSliderState extends State<GGGSlider> {
  CarouselSliderController _controller = CarouselSliderController(); // 控制轮播图跳转控制器
  int _currentIndex = 0;

  Widget _getSlider() {
    // 在Flutter中获取屏幕宽度的方法
    final double screenWidth = MediaQuery.of(context).size.width; // 屏幕宽度
    // 返回轮播图插件
    // 根据数据渲染的不同的轮播选项
    return CarouselSlider(
      carouselController: _controller, // 绑定controler对象
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
        autoPlayInterval: Duration(seconds: 2),
        onPageChanged: (index, reason) {
          _currentIndex = index;
          setState(() {});
        },
      )
    );
  }

  Widget _getSearch() {
    return Positioned(
      top: 10,
      left: 0,
      right: 0,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          alignment: Alignment.centerLeft,
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: 50,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(0, 0, 0, 0.4),
            borderRadius: BorderRadius.circular(25)
          ),
          child: Text(
            "搜索...",
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        )
      )
    );
  }
 
  // 返回指示灯导航部件
  Widget _getDots() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: SizedBox(
        height: 30, 
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center, // 主轴居中
          children: List.generate(widget.bannerList.length, (int index) {
            return GestureDetector(
              onTap: () {
                // _controller.jumpToPage(index);
                _controller.animateToPage(index);
              },
              child: AnimatedContainer(
                duration: Duration(milliseconds: 250),
                height: 6,
                width: index == _currentIndex ? 40 : 20,
                margin: EdgeInsets.symmetric(horizontal: 4),
                decoration: BoxDecoration(
                  color: index == _currentIndex ? Colors.white : Color.fromRGBO(0, 0, 0, 0.3),
                  borderRadius: BorderRadius.circular(3)
                ),
              )
            );
          }),
        )
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
      children: [_getSlider(), _getSearch(), _getDots()],
    );
  }
}