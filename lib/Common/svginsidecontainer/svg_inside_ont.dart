import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CircularContainerWithSVG extends StatelessWidget {
  final String firstImage;

  const CircularContainerWithSVG({required this.firstImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: SvgPicture.asset(
          firstImage,
          width: 24,
          height: 24,
        ),
      ),
    );
  }
}



class StoryAvator extends StatelessWidget {
  final String firstImage;
  final double height;
  final double width;


  const StoryAvator({super.key,
  required this.firstImage,
  required this.height,
  required this.width
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: height,
      height: width,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.yellow),
      ),
      child: Center(
        child: Image.asset(
          firstImage,
          height: height,
          width: width,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}