import 'dart:math';

class BmiBrain {
  final int height;
  final int weight;
  double _bmi;

  BmiBrain({this.height, this.weight});
  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String resultText() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String knowInterpert() {
    if (_bmi >= 25) {
      return 'Not Normal!!! Exercise More';
    } else if (_bmi > 18.5) {
      return 'Normal Body!!! Good Job';
    } else {
      return 'Lower Weight!!! Eat more';
    }
  }
}
