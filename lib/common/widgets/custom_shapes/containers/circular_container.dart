import 'package:flutter/material.dart';


class TCircularContainer extends StatelessWidget {
  const TCircularContainer({
    super.key,
    this.width = 400,
    this.height = 400,
    this.radius = 400,
    this.margin,
    this.padding = 0,
    this.child,
    this.backgroundColor = Colors.white,
    this.borderColor, // Make borderColor optional
  });

  final double? width;
  final double? height;
  final double radius;
  final double padding;
  final EdgeInsets? margin;
  final Widget? child;
  final Color backgroundColor;
  final Color? borderColor; // Optional borderColor

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor,
        border: borderColor != null ? Border.all(color: borderColor!) : null, // Apply border only if borderColor is provided
      ),
      child: child,
    );
  }
}
