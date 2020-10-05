import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import '../components/BottomAppBar.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class LinearRegPart3 extends StatefulWidget {
  @override
  _LinearRegPart3State createState() => _LinearRegPart3State();
}

 class _LinearRegPart3State extends State<LinearRegPart3> {

  @override
  Widget build(BuildContext context) {
      return WillPopScope(
           onWillPop: ()=>onBackPressed(context),

           child:Scaffold(
               appBar: AppBar(
                    title: Text(
                                'Linear Regression Part 3',
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
                                             btext1:'Linear Part 2',
                                             bonPress1:(){ Navigator.of(context).pushNamed('/LinearPart2'); },

                                             btext2:'',
                                             bonPress2:(){},
               ),

           ),

      );
   }
 }
