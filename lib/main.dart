import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:algosutra/route_generate.dart';
import 'package:algosutra/constant.dart';
import 'components/willPopScope.dart';

 void main() {
     runApp(HomePage());
 }

 class HomePage extends StatelessWidget {
  @override
   Widget build(BuildContext context) {
       SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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

