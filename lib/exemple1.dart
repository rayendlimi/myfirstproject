import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';

class exemple1 extends StatefulWidget{
  const exemple1 ({super.key});
  
  State <exemple1> createState()=>  _exemplestate();
  }
  class _exemplestate extends State <exemple1>{

      @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("exemple 1"),)
      ,
        body: Container(
          child: ListView(children: [
            Container(child: MaterialButton(child:Text("go to exemple2") ,onPressed: (){Navigator.of(context).pushNamed("exemple2");}),),
            Container(child: MaterialButton(child:Text("go to exemple3") ,onPressed: (){Navigator.of(context).pushNamed("exemple3");}),),
          ],
            
          ),
     ) );
  }
  }
