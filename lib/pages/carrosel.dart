import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageCarousel extends StatelessWidget {
  final List<String> imagePaths;

  const ImageCarousel({Key? key, required this.imagePaths}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 120,
      color: Colors.black38,
      child: CarouselSlider(
        options: CarouselOptions(
          height: 120,
          autoPlay: true,
          enlargeCenterPage: true,
          enableInfiniteScroll: true,
          autoPlayInterval: const Duration(seconds: 5),
        ),
        items: imagePaths.map((path) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.symmetric(horizontal: 0.6),
                decoration: const BoxDecoration(color: Colors.amber),
                child: Image.asset(
                  path,
                  fit: BoxFit.cover,
                ),
              );
            },
          );
        }).toList(),
      ),
    );
  }
}
