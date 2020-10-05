import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class DecisionPart3 extends StatefulWidget {
  @override
  _DecisionPart3State createState() => _DecisionPart3State();
}

 class _DecisionPart3State extends State<DecisionPart3> {

  @override
  Widget build(BuildContext context) {
        return WillPopScope(
               onWillPop:()=> onBackPressed(context),

               child:Scaffold(

                    appBar: AppBar(
                          title: Text(
                                   'Information Gain and Gini Index',
                                    style:kappSubTitle
                                 ),
                          toolbarHeight: kAppToolbarHeight,

                          leading: IconButton(
                                   icon:  kArrowBackIcon,
                                   onPressed: ()=>showDialogBox(context),
                          ),
                    ),

                    body:Container(),

                    bottomNavigationBar: BottomBar(
                                                  btext1:'Decision Part 2',
                                                  bonPress1:(){ Navigator.of(context).pushNamed('/DecisionPart2'); },

                                                  btext2:'',
                                                  bonPress2: (){},
                   ),

               ),

        );
   }
 }
