import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../models/container_list.dart';

class CarouselPage extends StatelessWidget {
  const CarouselPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Carousel Slider'),
        centerTitle: true,
      ),
      body: _Carousel(),
    );
  }
}

class _Carousel extends StatefulWidget {
  @override
  State<_Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<_Carousel> {
  final controller = CarouselController();
  var activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider.builder(
            carouselController: controller,
            itemCount: myList.length,
            itemBuilder: (context, index, realIndex) {
              return buildContainer(index);
            },
            options: CarouselOptions(
              height: 220,
              autoPlay: true,
              scrollDirection: Axis.horizontal,
              enlargeCenterPage: true,
              autoPlayInterval: const Duration(seconds: 2),
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              },
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          buildIndicator(),
        ],
      ),
    );
  }

  void activeDot(int index) {
    controller.animateToPage(index);
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: activeIndex,
      count: myList.length,
      effect: const ScrollingDotsEffect(),
      onDotClicked: activeDot,
    );
  }

  Widget buildContainer(index) {
    return myList[index];
  }
}
