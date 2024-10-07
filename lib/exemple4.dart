import 'dart:js';

import 'package:drop_down_list/model/selected_list_item.dart';
import 'package:flutter/material.dart';

import 'package:untitled/package/apptextfield.dart';


class exemple4 extends StatefulWidget{
  const exemple4 ({super.key});
  
  State <exemple4> createState()=>  _exemplestate1();
  }
  class _exemplestate1 extends State <exemple4>{
TextEditingController country= TextEditingController();
TextEditingController sexe= TextEditingController();

TextEditingController niveau =TextEditingController();

      @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text("exemple de dropdown"),backgroundColor: Colors.green[200] , actions: [],)
      ,
        body: ListView(

          children: [
            AppTextField (
              datalist: [
                SelectedListItem(name: "tunisia"),
                  SelectedListItem(name: "egypt"),
                SelectedListItem(name: "algerie"),
                SelectedListItem(name: "Libia"),
              ] 
              ,  textEditingController: country, title: "select country", hint: "country", isCitySelected: true),
 //**************** */
  AppTextField (
              datalist: [
                SelectedListItem(name: "femme"),
                  SelectedListItem(name: "homme"),
              ]
              ,  textEditingController: sexe, title: " select sexe", hint: "sexe", isCitySelected: true),

               AppTextField (
              datalist: [
                SelectedListItem(name: "1er"),
                  SelectedListItem(name: "2eme"),
               SelectedListItem(name: "3eme"),
               SelectedListItem(name: "4eme"),

              ]
              ,  textEditingController: niveau, title: " select niveau", hint: "niveau", isCitySelected: true), 
          //******************************** */

              ],
        )
    );}}