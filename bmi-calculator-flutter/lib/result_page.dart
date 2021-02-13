import 'package:flutter/material.dart';
import 'constant.dart';
import 'reusable_card.dart';
import 'button.dart';
class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmire,this.ret,this.inte});
  final String bmire;
  final String ret;
  final String inte;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('BMI CALCULATOR'),
      ),
      body:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child:Container(
              padding: EdgeInsets.all(10.0),
              child: Text('YOUR RESULT',
              style: labelTextStyle4,
              ),
            )
          ),
          Expanded(
            flex:5,
            child:ReusableCard(colour: containercolour,
            cardChild: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  bmire,style:labelTextStyle5,
                ),
                    Text(
                  ret,style:labelTextStyle6,
                ),
                      Text(
                  inte,style:labelTextStyle7,
                  textAlign: TextAlign.center,
              
                ),
              ]

                )
            ),

),
          BottomButton(text: 'RE-ENTER',
          ontab: ()
          {
            Navigator.pop(context);

          }
          ),
          
        ],
      ),
      
    );
  }
}