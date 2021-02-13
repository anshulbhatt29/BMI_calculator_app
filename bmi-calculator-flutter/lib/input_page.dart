import'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import'icon_content.dart';
import'reusable_card.dart';
import 'constant.dart';
import 'result_page.dart';
import 'round.dart';
import 'button.dart';
import 'calculatebrain.dart';
enum Gender{male,female}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}
 

class _InputPageState extends State<InputPage> {
  Gender select;
  int height=180;
  int weight=60;
  int age=19;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(

        children :[
         Expanded(
                    child:Row(children:[
                       Expanded(
                         child: 
                         ReusableCard(
                           onpress:(){
                             setState(() {
                               select=Gender.male;
                             });
                           } ,
                             colour: select==Gender.male?containercolour:inactiveCardColour,
                             cardChild: IconContent(data:FontAwesomeIcons.mars,text:'MALE'),
                             ),
                           ),
         Expanded(
                    child: ReusableCard(
                      onpress: (){
                        setState(() {
                          select=Gender.female;
                        });
                      },
                      colour: select==Gender.female?containercolour:inactiveCardColour,
                      cardChild:IconContent(data: FontAwesomeIcons.venus,text: 'FEMALE',)
                      ,)
         ),
                    ]
                    ),
         ),
           Expanded(
                    child: ReusableCard(
                      cardChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'HEIGHT',
                            style:labelTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            children:[
                              Text(height.toString(),
                              style:labelTextStyle2,
                              ),
                              Text('cm',
                                style:labelTextStyle
                                ),

                            ]
                          ),
                          SliderTheme(
                            data:SliderThemeData( 
                               inactiveTrackColor:Color(0xFF8D8E98),
                              activeTrackColor:Color(0xFFEB1555),
                              thumbShape:RoundSliderThumbShape(enabledThumbRadius:10),
                             overlayShape: RoundSliderOverlayShape(overlayRadius:20.0),
                              thumbColor:Color(0xFFEB1555),
                              overlayColor:Color(0x29EB1555),
                            ),
                             child: Slider(
                              value: height.toDouble(),
                              min: 120.0,
                              max: 220.0,
                              onChanged:(double value){
                                setState(() {
                                  height=value.round();
                                });
                              }
                            ),
                          )
                        ],
                      ),

                      colour: containercolour
                      )
         ),
            Expanded(
                    child:Row(children:[ 
         Expanded(
                    child: ReusableCard(
                    colour:containercolour,
                     cardChild:Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [ 
                         Text(
                           'WEIGHT',
                           style:labelTextStyle,
                           ),
                           Text(
                             weight.toString(),
                             style: labelTextStyle2,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                                                        children:[ RoundIconButton(
                               icon: FontAwesomeIcons.plus,
                               func: ()
                               {
                                 setState(() {
                                     weight++;
                                 });
                               
                               },
                             ),
                           SizedBox(
                             width:10.0,
                           ),
                               RoundIconButton(
                             icon: FontAwesomeIcons.minus,
                             func: ()
                             {
                               setState(() {
                                   weight--;
                               });
                             },
                           ),
                    
                                                        ]
                     ),
                       ]
                         )
                         )
                    
                    ),
           Expanded(
                    child: ReusableCard(
                      colour:containercolour,
                       cardChild:Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [ 
                         Text(
                           'AGE',
                           style:labelTextStyle,
                           ),
                           Text(
                             age.toString(),
                             style: labelTextStyle2,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                                                        children:[ RoundIconButton(
                               icon: FontAwesomeIcons.plus,
                               func: ()
                               {
                                 setState(() {
                                     age++;
                                 });
                               
                               },
                             ),
                           SizedBox(
                             width:10.0,
                           ),
                               RoundIconButton(
                             icon: FontAwesomeIcons.minus,
                             func: ()
                             {
                               setState(() {
                                   age--;
                               });
                             },
                           ),
                       ]
                       ),
                       ]
                         ),

                      )
         ),
                    ]
                    ),
         ),
         BottomButton(
           text:'CALCULATE',ontab:(){
            Calculate c= Calculate(h:height,w:weight);
              Navigator.push(context,MaterialPageRoute(builder: (context)=>ResultsPage(
                bmire: c.cal(),
                ret: c.re(),
                inte: c.getin()
                
              )));
              },


      ),
        ]
      ),
      
      );
  }
}





