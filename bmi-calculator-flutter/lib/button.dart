
import 'package:flutter/material.dart';
import 'constant.dart';
class BottomButton extends StatelessWidget {
 final Function ontab;
 final String text;
 BottomButton({@required this.ontab,this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
               child: Container(
        child: Text(text,
        style: labelTextStyle3,
        textAlign:TextAlign.center,
        ),
        padding: EdgeInsets.only(bottom:20.0),
        color:Color(0xFFEB1555) ,
        margin:EdgeInsets.only(top:10.0),
        height: botmcontainer ,
        width: double.infinity,
      ),
    );
  }
}