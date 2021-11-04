import 'dart:math';

class CalculatorBrain {
  int weight;
  int height;
  int age;

  CalculatorBrain(
      {required this.weight, required this.height, required this.age});

  double _bmi = 0;
  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2).toDouble();

    return _bmi.toStringAsFixed(1);
  }

  getResult() {
    print(_bmi);
    if (_bmi >= 25.0) {
      return 'Overweight';
    } else if (_bmi > 18.5 && _bmi < 24.9) {
      return 'Normal';
    } else if (_bmi <= 18.5) {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have a normal body weight, Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
