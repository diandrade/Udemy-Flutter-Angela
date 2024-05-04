import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late final double _bmi;

  String calculateBMI(){
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if (_bmi >= 25) {
      return 'Acima do peso';
    } else if (_bmi > 18.5) {
        return 'Normal';
    } else {
      return 'Abaixo do peso';
    }
  }

  String getInterpretation(){
    if (_bmi >= 25) {
      return 'Você está um pouco acima do peso. Tente se exercitar mais!';
    } else if (_bmi > 18.5) {
      return 'Seu peso está dentro da média. Bom trabalho!';
    } else {
      return 'Você está com o peso um pouco abaixo da média. Consuma mais carboidratos!.';
    }
  }
}