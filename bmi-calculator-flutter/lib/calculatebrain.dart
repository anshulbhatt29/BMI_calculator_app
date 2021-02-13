

class Calculate
{
  Calculate({this.h,this.w});
  final int h,w;
  double _bmi;
  String cal()
  {
    _bmi=w*10000/(h*h);
    return _bmi.toStringAsFixed(1);
  }
  String re()
  {
    if(_bmi>=25)
    return'Overweigth';
    else if(_bmi>18.5)
    return'Normal';
    else 
    return'Underweight';
  }
  String getin()
  {
      if(_bmi>=25)
    return'Eat less';
    else if(_bmi>18.5)
    return'Live';
    else 
    return'Eat More';

  }

}