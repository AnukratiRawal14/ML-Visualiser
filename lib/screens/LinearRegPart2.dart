import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';


class LinearRegPart2 extends StatefulWidget {
  @override
  _LinearRegPart2State createState() => _LinearRegPart2State();
}

 class _LinearRegPart2State extends State<LinearRegPart2> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
         onWillPop: ()=>onBackPressed(context),

          child:Scaffold(

              appBar: AppBar(
                     title: Text(
                                'Linear Regression Part 2',
                                style:kappSubTitle
                            ),
                     toolbarHeight: kAppToolbarHeight,

                     leading: IconButton(
                             icon: kArrowBackIcon,
                             onPressed:()=>showDialogBox(context),
                     ),
              ),

               body:Container(),

               bottomNavigationBar: BottomBar(
                                             btext1:'Linear Part 1',
                                             bonPress1:(){ Navigator.of(context).pushNamed('/LinearPart1'); },

                                             btext2:'Linear Part 3',
                                             bonPress2:(){  Navigator.of(context).pushNamed('/LinearPart3');},
              ),

          ),

    );

   }
 }