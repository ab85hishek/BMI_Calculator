import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final height;
  final weight;

  double calculateBMI() {
    double bmi = weight / pow(height / 100, 2);
    return bmi;
  }

  String stringBMI(double bmi) {
    return bmi.toStringAsFixed(1);
  }

  String getResult(double bmi) {
    if (bmi >= 25)
      return 'Overweight';
    else if (bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation(double bmi) {
    if (bmi >= 25)
      return 'You have a higher than a normal body weight. Try to exercise more.';
    if (bmi > 18.5)
      return 'You have a normal body weight. Good job!';
    else
      return 'You have a lower than a normal body weight. You can eat a bit more.';
  }
}
