

import 'dart:math';
class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});
  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){

    _bmi = weight/ pow(height/100,2);
    return _bmi.toStringAsFixed(1);
  }
  String getResult(){

    if (_bmi>= 25){
      return 'Overweight';
    }else if( _bmi>18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if (_bmi>= 25){
      return 'You are overweight. Eat less';
    }else if( _bmi>18.5){
      return 'You have normal weight. Good Job!';
    }else{
      return 'You have lower normal weight. Eat More!';
    }
  }
}