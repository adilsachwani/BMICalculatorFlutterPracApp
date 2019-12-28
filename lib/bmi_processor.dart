import 'dart:math';

import 'package:flutter/cupertino.dart';

class BMIProcessor {
  final int height;
  final int weight;
  double _bmi;

  BMIProcessor({@required this.height, @required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 30) {
      return 'Obese';
    } else if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 30) {
      return 'Your are quite over weighted. Please excercie and make a proper diet plan asap.';
    } else if (_bmi >= 25) {
      return 'Your weight is higher than normal. Try to excercise more.';
    } else if (_bmi >= 18.5) {
      return 'Your weight is normal. Good job!';
    } else {
      return 'Your weight is lower than normal. Try to eat more.';
    }
  }
}
