import 'dart:math';

class BMI {
  BMI({required this.weight, required this.height});
  final int height;
  final int weight;

  double? _bmi;
  String calcBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi! >= 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getDescription() {
    if (_bmi! >= 25) {
      return 'You have a higher than normal body weight. Try and exercise more';
    } else if (_bmi! >= 18.5) {
      return 'You have normal body weight. Good job';
    } else {
      return 'You have a than normal body weight. You can eat a bit more';
    }
  }
}
