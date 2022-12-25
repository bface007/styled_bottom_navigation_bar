import 'package:flutter/painting.dart';

class BottomNavigationBarStyle {
  final BoxDecoration? innerBoxDecoration;
  final EdgeInsetsGeometry? innerBoxMargin;
  final Color? backgroundColor;

  const BottomNavigationBarStyle({
    this.innerBoxDecoration,
    this.innerBoxMargin,
    this.backgroundColor,
  });

  factory BottomNavigationBarStyle.standard() =>
      const BottomNavigationBarStyle();

  factory BottomNavigationBarStyle.floating({
    required BoxDecoration innerBoxDecoration,
    double horizontalMargin = 8,
    Color? backgroundColor,
  }) {
    assert(horizontalMargin >= 0);
    return BottomNavigationBarStyle(
      backgroundColor: backgroundColor ?? const Color.fromRGBO(0, 0, 0, 0),
      innerBoxMargin: EdgeInsets.only(
        left: horizontalMargin,
        right: horizontalMargin,
        bottom: 4,
      ),
      innerBoxDecoration: innerBoxDecoration,
    );
  }
}
