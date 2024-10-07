import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';

class exemple2 extends StatefulWidget{
  const exemple2 ({super.key});
  
  State <exemple2> createState()=>  _exemplestate();
  }
  class _exemplestate extends State <exemple2>{

  ScrollController? scrollcont;
void initState(){
  scrollcont = ScrollController();

scrollcont?.addListener(() {
  print("${scrollcont?.offset}"); 
                           });
super.initState();
  }  
  
      @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:Text("scroll")),
        body: ListView(controller: scrollcont ,
        children: [
          ...List.generate(60, (index) => Container(height: 70, alignment: Alignment.center,
          child: Text("$index", style: TextStyle(color: Colors.white),),color:  index.isEven ? Colors.black : Colors.pink)),
          MaterialButton(onPressed: () {scrollcont!.jumpTo(0.0);} , child: Text("jump to top"),),

        ],)
        
         );
  }
  }