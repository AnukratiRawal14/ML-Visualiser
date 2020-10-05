import 'package:algosutra/route_generate.dart';
import 'package:flutter/material.dart';
import 'package:algosutra/constant.dart';
import 'components/willPopScope.dart';

 void main() {
     runApp(HomePage());
 }

 class HomePage extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
       return WillPopScope(
            onWillPop: ()=>onBackPressed(context),

            child: MaterialApp(
                       title: 'AlgoSutra',
                       theme: ThemeData.dark().copyWith(
                                      primaryColor: kAppBarColor,
                                      scaffoldBackgroundColor:kBackgroundColor,
                       ),
                      initialRoute: '/',
                      onGenerateRoute: RouteGenerate.generateRoute,
           ),

       );
   }
  }

