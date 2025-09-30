import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({super.key});

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  PageController _controller = PageController();

  final List<String> _image = [
    "assets/images/home_images/hieroglyphic_cartouche_solid_in_gold.jpg",
    "assets/images/home_images/snake_ring.jpg",
    "assets/images/home_images/eye_and_ankh.jpg",
  ];

  int _currentPage = 0;
  bool _forword = true;
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Timer.periodic(Duration(seconds: 3), (Timer timer) {
        if (_forword) {
          if (_currentPage < _image.length - 1) {
            _currentPage++;
          } else {
            _forword = false;
            _currentPage--;
          }
        } else {
          if (_currentPage > 0) {
            _currentPage--;
          } else {
            _forword = true;
            _currentPage++;
          }
        }

        _controller.animateToPage(
          _currentPage,
          duration: Duration(microseconds: 700),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: PageView.builder(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemCount: _image.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                _image[index],
                fit: BoxFit.contain,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: SmoothPageIndicator(
            controller: _controller,
            count: _image.length, // عدد الصفحات
            effect: ExpandingDotsEffect(
              activeDotColor: const Color.fromARGB(255, 255, 255, 255),
              dotColor: Colors.grey,
              dotHeight: 8,
              dotWidth: 6,
              expansionFactor: 3,
            ),
          ),
        )
      ],
    );
  }
}
