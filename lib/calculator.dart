import 'dart:math';

String overweight =
    "You have a higher than normal body weight. Try to exercise more.";
String normal = "You have a normal body weight. Good job!";
String underweight =
    "You have lower than a normal body weight. you need to eat more.";

class Calculator {
  final int height;
  final int weight;

  double _bmi;

  Calculator({this.height, this.weight});

  String calculateBMI() {
    this._bmi = this.weight / pow(this.height / 100, 2);

    print("$height $weight $_bmi");

    return _bmi.toStringAsFixed(1);
  }

  String getResult() => (this._bmi >= 25
          ? "overweight"
          : this._bmi > 18.5 ? "normal" : "underweight")
      .toUpperCase();

  String getInterpretation() =>
      this._bmi >= 25 ? overweight : this._bmi > 18.5 ? normal : underweight;
}
