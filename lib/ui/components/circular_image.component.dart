import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  final String imageUrl;
  final double? outlineWidth;
  final Color? outlineColor;
  final double? height;
  final double? width;

  const CircularImage({
    Key? key,
    required this.imageUrl,
    this.outlineWidth = 1,
    this.outlineColor = Colors.transparent,
    this.height = 30,
    this.width = 30,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(
          color: outlineColor!,
          width: outlineWidth!,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: Image.asset(imageUrl),
      ),
    );
  }
}
