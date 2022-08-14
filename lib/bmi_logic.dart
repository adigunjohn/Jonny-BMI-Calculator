import 'dart:math';

class BmiLogic {
  int? height;
  int? weight;
  double? _calcubmi;

  BmiLogic ({required this.height, required this.weight});

  String calcBMI (){
    _calcubmi = (weight! / pow(height! / 100, 2));
    return _calcubmi!.toStringAsFixed(1);
  }
  String moreDetail (){
    if ( _calcubmi! >= 25 ){
      return 'Overweight';
    }
    else if ( _calcubmi! > 18.5){
      return 'Normal';
    }
    else{ return 'Underweight';}
  }
  String fullDetail (){
    if ( _calcubmi! >= 25 ){
      return 'You are a fuckin glutton man, FUCK YOU!';
    }
    else if ( _calcubmi! > 18.5){
      return 'Nice one mate,you are fit and normal. Keep it up!';
    }
    else{ return 'You need some real food mate, you fucking under fed!';}
  }
}