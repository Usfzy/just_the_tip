import 'package:flutter/cupertino.dart';

class Utils {
  Utils._();

  static const euroSymbol = '€';
  static const poundSymbol = '£';
  static const dolorSymbol = '\$';

  static double calculatePercentage(double percentage, double total) {
    return (percentage / 100) * total;
  }
}
