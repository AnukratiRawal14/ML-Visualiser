import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';


 class SimpleCard extends StatelessWidget {
      SimpleCard({@required this.text1,@required this.onPress});
           final String text1;
           final Function onPress;

           @override
           Widget build(BuildContext context) {
              return  Padding(
                    padding: EdgeInsets.all(0.0),

                    child: Card(
                             elevation:kCardElevation,
                             color: kCardColor,
                             shape: kCardShape,
                             margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 3.0),
                             child: ListTile(
                                        onTap:onPress,
                                        title: Text(
                                                     text1,
                                                     style: kTitleText,
                                               ),
                              ),
                    ),

              );
          }
 }

 class Cards extends StatelessWidget {
      Cards({@required this.text2,this.onPress1,this.onPress2,this.onPress3,this.textSubTitle1,this.textSubTitle2,this.textSubTitle3});
           final String text2;
           final String textSubTitle1;
           final String textSubTitle2;
           final String textSubTitle3;
           final Function onPress1;
           final Function onPress2;
           final Function onPress3;

      @override
      Widget build(BuildContext context) {
        return Card(
                   elevation: kCardElevation,
                   shape: kCardShape,
                   color:kCardColor,

                   child: ExpansionTile(
                          trailing: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                      Icons.expand_more,
                                      color: Colors.black,
                                      size: 30.0,
                                ),
                              ]
                          ),

                          title: Text(
                                      text2,
                                      style: kTitleText,
                               ),

                        children: <Widget>[

                           kCardDivider,

                            InkWell(
                                    onTap:onPress1,
                                        child: ListTile(
                                                title: Text(
                                                            textSubTitle1,
                                                            style: ksubTitle
                                                       ),
                                        ),
                            ),

                          kCardDivider,

                          InkWell(
                                  onTap: onPress2,
                                       child: ListTile(
                                                title: Text(
                                                            textSubTitle2,
                                                            style: ksubTitle
                                                      ),
                                       ),
                          ),

                          kCardDivider,

                          InkWell(
                                  onTap:onPress3,
                                      child: ListTile(
                                               title: Text(
                                                          textSubTitle3,
                                                          style: ksubTitle
                                                       ),
                                      ),
                          ),

                        ],

                   ),

        );
    }
 }
