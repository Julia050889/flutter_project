import 'package:flutter/material.dart';
import 'package:slider_carousel/slider/slider_page.dart';

void main() {
  runApp(const SliderPage());
}

class SliderPage extends StatelessWidget {
  const SliderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Slider Carousel',
      debugShowCheckedModeBanner: false,
      home: CarouselPage(),
    );
  }
}
