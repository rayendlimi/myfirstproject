import 'dart:html';
import 'dart:js';

import 'package:untitled/details.dart';
import 'package:untitled/exemple1.dart';
import 'package:untitled/exemple2.dart';
import 'package:untitled/exemple3.dart';

import 'homepage.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget{
const MyApp ({super.key});

State<MyApp> createState()=> MyAppstate();

}
class MyAppstate extends State<MyApp>{
  


  @override
  Widget build(BuildContext context) { 
   return MaterialApp( debugShowCheckedModeBanner: false,
    home: homepage(),
    routes:  {
            "exemple1":(context) => exemple1(),
            "exemple2":(context) => exemple2(),
            "exemple3":(context) => exemple3(),
            
  
    }
   );
  }
   
  }