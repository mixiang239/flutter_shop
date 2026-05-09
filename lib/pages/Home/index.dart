import 'package:flutter/material.dart';
import 'package:hm_shop/components/Home/GGGCategory.dart';
import 'package:hm_shop/components/Home/GGGHot.dart';
import 'package:hm_shop/components/Home/GGGMoreList.dart';
import 'package:hm_shop/components/Home/GGGSlider.dart';
import 'package:hm_shop/components/Home/GGGSuggestion.dart';
import 'package:hm_shop/viewmodels/home.dart';

class HomeView extends StatefulWidget {
  HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  final List<BannerItem> _bannerList = [
    BannerItem(id: "1", imgUrl: "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg"),
    BannerItem(id: "2", imgUrl: "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/2.png"),
    BannerItem(id: "3", imgUrl: "https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/3.jpg"),
  ];
  // https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/1.jpg
  // https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/2.png
  // https://yjy-teach-oss.oss-cn-beijing.aliyuncs.com/meituan/3.jpg

  List<Widget> _getScrollViewChildren() {
    return [
      // 包裹普通widget的sliver家族的组件
      SliverToBoxAdapter(child: GGGSlider(bannerList: _bannerList,),), // 轮播图组件
      // 放置间距组件
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      // 放置分类组件
      // SliverGrid SliverList只能纵向排列
      SliverToBoxAdapter(child: GGGCategory(),),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      // 推荐组件
      SliverToBoxAdapter(child: GGGSuggestion(),),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),

      SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsetsGeometry.symmetric(horizontal: 10),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Expanded(child: GGGHot(),),
              SizedBox(width: 10,),
              Expanded(child: GGGHot(),),
            ],
          )
        ) 
      ),
      SliverToBoxAdapter(child: SizedBox(height: 10,),),
      GGGMoreList(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScrollViewChildren(), // sliver家族的内容
    ); 
  }
}