import 'package:algosutra/constant.dart';
import 'package:flutter/material.dart';
import '../components/willPopScope.dart';
import '../components/showDialogBox.dart';

class IntroToML extends StatefulWidget {
  @override
  _IntroToMLState createState() => _IntroToMLState();
}

 class _IntroToMLState extends State<IntroToML> {
  @override
   Widget build(BuildContext context) {
        return  WillPopScope(
             onWillPop: ()=>onBackPressed(context),

             child:Scaffold(

                  appBar: AppBar(
                       title: Text(
                                    'Introduction to ML',
                                     style:kappSubTitle
                              ),
                        toolbarHeight:kAppToolbarHeight,

                        leading: IconButton(
                                icon: kArrowBackIcon,
                                onPressed: ()=>showDialogBox(context),
                        ),
                  ),

                  body:Container(),


             ),

        );
   }
 }