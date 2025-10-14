import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homeSlider extends StatefulWidget {
  const homeSlider({super.key});

  @override
  State<homeSlider> createState() => _homeSliderState();
}

class _homeSliderState extends State<homeSlider> {
  @override
  Widget build(BuildContext context) {
    int activeIndex = 1;
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    Appimages.bg,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                );
              },
          options: CarouselOptions(
            height: 150,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            onPageChanged: (index, reason) {
              setState(() {
                 activeIndex=index;
              });
            },
            scrollDirection: Axis.horizontal,
          ),
        ),
        Gap(15),
        AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: 3,
          effect: ExpandingDotsEffect(
            spacing: 5,
            dotHeight: 7,
            dotWidth: 7,
            expansionFactor: 4,
            activeDotColor: Appcolors.orangecolor,
            dotColor: Appcolors.textcolor,
          ),
        ),
      ],
    );
  }
}
