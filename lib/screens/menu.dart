 import 'package:flutter/material.dart';
 import 'package:algosutra/constant.dart';
 import '../components/Cards.dart';
 import '../components/willPopScope.dart';

 class Algorithm extends StatefulWidget {
   @override
   _AlgorithmState createState() => _AlgorithmState();
 }

 class _AlgorithmState extends State<Algorithm> {
   @override
   Widget build(BuildContext context) {
        return WillPopScope(
            onWillPop: ()=>onBackPressed(context),

            child:Scaffold(

                 appBar: AppBar(
                         title: Text('AlgoSutra',
                                      style:kappTitle,
                         ),
                         toolbarHeight: kAppToolbarHeight,
                 ),

                 backgroundColor:kBackgroundColor,

                  body: Container(

                      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      padding: EdgeInsets.all(15.0),

                       child: ListView(

                        children: <Widget>[

                            //------------Introduction to ML------------//

                            SimpleCard(
                                    onPress:() { Navigator.of(context).pushNamed('/IntroToMl');},
                                    text1: 'Introduction to ML',
                            ),

                           kSizedBox,

                               //--------------Linear Regression--------------//

                           Cards(
                                 text2: "Linear Regression",

                                 onPress1: (){
                                       Navigator.of(context).pushNamed('/LinearPart1');
                                 },
                                 textSubTitle1: "Introduction to Linear Regression",

                                 onPress2: (){
                                        Navigator.of(context).pushNamed('/LinearPart2');
                                  },
                                 textSubTitle2:"Linear Regression Part 2",

                                 onPress3:(){
                                        Navigator.of(context).pushNamed('/LinearPart3');
                                 },
                                 textSubTitle3:"Linear Regression Part 3",
                           ),

                           kSizedBox,

                             //---------------Decision Tree----------------//

                            Cards(
                                  text2: "Decision Tree",

                                  onPress1: () {
                                          Navigator.of(context).pushNamed('/DecisionPart1');
                                  },
                                  textSubTitle1: "Introduction to Decision Tree",

                                  onPress2: () {
                                          Navigator.of(context).pushNamed('/DecisionPart2');
                                  },
                                  textSubTitle2:"Basic Simulation of Decision Tree",

                                  onPress3:() {
                                           Navigator.of(context).pushNamed('/DecisionPart3');
                                  },
                                  textSubTitle3:"Information gain & gini index",
                            ),

                           kSizedBox,

                                    //-----------SVM------------//

                           Cards(
                                 text2: "SVM",

                                 onPress1: (){print('Lets discuss about SVM -1');},
                                 textSubTitle1: "Introduction to SVM",

                                 onPress2: () {print('Lets discuss about SVM -2');},
                                 textSubTitle2:"SVM Part 2",

                                 onPress3:(){print('Lets discuss about SVM -3');},
                                 textSubTitle3:"SVM Part 3",
                           ),

                           kSizedBox,

                                    //------------k-means clustering-----------//

                           Cards(
                                 text2: "k-means clustering",

                                 onPress1: (){print('Lets discuss about k-means clustering -1');},
                                 textSubTitle1: "Introduction to k-means clustering",

                                 onPress2: () {print('Lets discuss about k-means clustering -2');},
                                 textSubTitle2:"k-means clustering part 1",

                                 onPress3:(){print('Lets discuss about k-means clustering -3');},
                                 textSubTitle3:"k-means clustering part 2",
                           ),

                           kSizedBox,

                                 //---------------Logistic Regression----------------//
                           Cards(
                                text2: "Logistic Regression",

                                onPress1: (){print('Lets discuss about Logistic Regression -1');},
                                textSubTitle1: "Introduction to Logistic Regression",

                                onPress2: () {print('Lets discuss about Logistic Regression -2');},
                                textSubTitle2:"Logistic Regression Part 2",

                                onPress3:(){print('Lets discuss about Logistic Regression -3');},
                                textSubTitle3:"Logistic Regression Part 3",
                           ),

                           kSizedBox,

                                     //--------- Neural Networks----------//

                           Cards(
                                  text2: "Neural Network",

                                  onPress1: (){print('Lets discuss about Neural Network -1');},
                                  textSubTitle1: "Introduction to Neural Network",

                                  onPress2: () {print('Lets discuss about Neural Network -2');},
                                  textSubTitle2:"Neural Network Part 2",

                                  onPress3:(){print('Lets discuss about Neural Network -3');},
                                  textSubTitle3:"Neural Network Part 3",
                          ),

                         ],

                       ),

                  ),

            ),
        );

    }
 }

