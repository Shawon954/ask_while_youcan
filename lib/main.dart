import 'package:ask_while_youcan/Responsive_Screen/mobail_screen.dart';
import 'package:ask_while_youcan/Responsive_Screen/tablate_screen.dart';
import 'package:ask_while_youcan/Responsive_Screen/web_screeen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch:Colors.teal
      ),
      home:  LayoutBuilder(builder: (context,constraints){

        if(constraints.maxWidth<600){
          return MobileScreen();}

        else if (constraints.maxWidth>600 &&constraints.maxWidth<900 ){

          return TabletScreen();
        }
        else if(constraints.maxWidth>900){

          return WebScreen();
        }


        else{
          return CircularProgressIndicator();
        }
      },),
    );
  }
}

