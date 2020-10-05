import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class DecisionPart2 extends StatefulWidget {
  @override
  _DecisionPart2State createState() => _DecisionPart2State();
}
 class _DecisionPart2State extends State<DecisionPart2> {

  @override
  Widget build(BuildContext context) {
      return WillPopScope(
           onWillPop: ()=>onBackPressed(context),

           child:Scaffold(

                appBar:AppBar(
                         title: Text(
                                     'Basic Simulation Of Decision Tree',
                                      style:kappSubTitle
                                ),
                         toolbarHeight: kAppToolbarHeight,

                         leading: IconButton(
                                      icon: kArrowBackIcon,
                                      onPressed: ()=>showDialogBox(context),
                         ),
                ),

                body:Container(),

                bottomNavigationBar: BottomBar(
                                              btext1:'Decision Part 1',
                                               bonPress1:(){ Navigator.of(context).pushNamed('/DecisionPart1'); },

                                              btext2:' Decision Part 2',
                                              bonPress2:(){ Navigator.of(context).pushNamed('/DecisionPart3'); },
                ),

           ),

      );
   }
 }

























//body: Row(
//children:<Widget>[
//BottomButton1(
//buttonTitle1: 'Introduction to Decision Tree',
//onPress1:(){
//Navigator.push(context, MaterialPageRoute(builder:(context)=>DecisionPart1()));
//print("lets discuss  next topic");},
//),

//SizedBox(
//height: 25.0,),

//BottomButton2(
//buttonTitle2: 'Information gain & gini index',
//onPress2:(){print("lets discuss  next topic");},
//),