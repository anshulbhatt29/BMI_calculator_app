import'package:flutter/material.dart';
import 'constant.dart';

class IconContent extends StatelessWidget {
 IconContent({this.data,this.text});
 final IconData data;
 final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(data,
        size: 70.0,),
        SizedBox(
          height:15.0
        ),
        Text(text,style: labelTextStyle
        )
      ],
    );
  }
}