import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';


class DecisionPart1 extends StatefulWidget {
  @override
  _DecisionPart1State createState() => _DecisionPart1State();
}

 class _DecisionPart1State extends State<DecisionPart1> {

  @override
  Widget build(BuildContext context) {
      return WillPopScope(
          onWillPop: ()=>onBackPressed(context),

          child:Scaffold(

              appBar: AppBar(
                    title: Text(
                                  'Introduction to Decision Tree',
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
                                              btext1:'',
                                              bonPress1:(){},

                                              btext2:'Decision Part 1',
                                              bonPress2:(){ Navigator.of(context).pushNamed('/DecisionPart2'); },

              ),

          ),

      );
   }
 }

