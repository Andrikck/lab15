import 'package:flutter_test/flutter_test.dart';
import 'package:lab15/function_calculator.dart';

void main() {
  test('FunctionCalculator should return correct result for valid x', () {
    final calculator = FunctionCalculator();

    expect(calculator.calculate(1), equals(0));  // y = (1^2 - 1) / 1^3 = 0
    expect(calculator.calculate(2), equals(0.25));  // y = (2^2 - 2) / 2^3 = 0.25
  });

  test('FunctionCalculator should throw error for x = 0', () {
    final calculator = FunctionCalculator();
    expect(() => calculator.calculate(0), throwsArgumentError);
  });
}
