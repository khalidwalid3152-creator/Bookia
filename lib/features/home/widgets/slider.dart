import 'package:bookia/features/home/data/models/s_slider/slider.dart';
import 'package:bookia/features/home/presentation/home_cubit.dart';
import 'package:bookia/features/home/presentation/home_state.dart';
import 'package:bookia/utils/colors.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class homeSlider extends StatefulWidget {
  const homeSlider({super.key, required this.sliders});
  final List<SliderModel> sliders;
  @override
  State<homeSlider> createState() => _homeSliderState();
}

class _homeSliderState extends State<homeSlider> {
  int activeIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: widget.sliders.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.sliders[itemIndex].image!,
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
                activeIndex = index;
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
