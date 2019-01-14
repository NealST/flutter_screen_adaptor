library screen_adaptor;

import 'package:flutter/material.dart';
import 'dart:ui';

/// A Calculator.
class Fpx {
  static MediaQueryData mediaData = MediaQueryData.fromWindow(window);
  static double screenWidth = mediaData.size.width;
  static double screenHeight = mediaData.size.height;
  static double dpr = mediaData.devicePixelRatio;
  static var _uiRatio;
  static init(int uiWidth) {
    _uiRatio = screenWidth / uiWidth;
  }

  static to(double number) {
    if (!(_uiRatio is int || _uiRatio is double)) {
      Fpx.init(750);
    }
    return number * _uiRatio;
  }

  static one() {
    return 1 / dpr;
  }

  static vw() {
    return screenWidth;
  }

  static vh() {
    return screenHeight;
  }
}
