import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stylishapp/Views/Colors/colors.dart';

class CarouselSliderView extends StatefulWidget {
  
  const CarouselSliderView({super.key});

  @override
  State<CarouselSliderView> createState() => _CarouselSliderViewState();
}

class _CarouselSliderViewState extends State<CarouselSliderView> {
  int currentIndex = 0;

  List<String> carouselImage = [
    'assets/carsoul/unsplash.png',
    'assets/carsoul/unsplash1.png',
    'assets/carsoul/unsplash2.png',
    'assets/carsoul/unsplash3.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 210,
          child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: carouselImage.length,
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
                  image: DecorationImage(
                      image: AssetImage(carouselImage[index]), fit: BoxFit.cover),
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
          count: carouselImage.length,
          effect: const WormEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: AppColors.primaryColors,
          ),
        )
      ],
    );
  }
}