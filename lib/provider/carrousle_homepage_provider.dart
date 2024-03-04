import 'package:flutter/material.dart';

class CarouselHomeProvider extends ChangeNotifier {
  int _carouselCurrentIndex = 0;

  int get carouselCurrentIndex => _carouselCurrentIndex;

  void updatePageIndicator(int index) {
    _carouselCurrentIndex = index;
    notifyListeners();
  }
}