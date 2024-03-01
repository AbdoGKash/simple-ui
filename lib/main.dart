// ignore_for_file: use_key_in_widget_constructors, camel_case_types, avoid_unnecessary_containers, sized_box_for_whitespace, must_be_immutable, prefer_const_constructors
import 'package:flutter/material.dart';
import 'homescreen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {    
  
  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      
      child: MaterialApp(
        
          debugShowCheckedModeBanner: false,
          home: Scaffold(
              body: Placedetailspage()
      )));
  }
}

