import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class PageViewList extends StatefulWidget {
  const PageViewList({super.key});

  @override
  State<PageViewList> createState() => _PageViewListState();
}

class _PageViewListState extends State<PageViewList> {

  List<String> imageLoad = [
    'assets/images/Group1.png',
    'assets/images/unsplash.jpg',
    'assets/images/Group1.png',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 210,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imageLoad.length,
            physics: const BouncingScrollPhysics(),
            onPageChanged: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageLoad[index]), fit: BoxFit.cover),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
          ),
        ),
        const SizedBox(height: 10),
        AnimatedSmoothIndicator(
          activeIndex: currentIndex, 
          count: imageLoad.length,
          effect: const WormEffect(
            dotHeight: 10,
            dotWidth: 10,
            activeDotColor: AppColors.primaryColors
          ),
        )
      ],
    );
  }
}