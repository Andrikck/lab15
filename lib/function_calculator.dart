// function_calculator.dart
class FunctionCalculator {
  double calculate(double x) {
    if (x == 0) {
      throw ArgumentError('x cannot be zero');
    }
    return (x * x - x) / (x * x * x);
  }
}
