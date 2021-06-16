import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2); //converted into mts
    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over-Weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Under-Weight';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Try to eat Less and Exercise More!';
    } else if (_bmi > 18.5) {
      return 'You have a Normal body Weight. Good Job!!';
    } else {
      return 'You have a lower than normal body weight. Please eat More!';
    }
  }
}
