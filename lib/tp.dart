import 'dart:js';

import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';

class tp extends StatefulWidget{
  const tp ({super.key});
  
  State <tp> createState()=>  _tp();
  }
  class _tp extends State <tp>{
    List chanteur =["wael kfouri", "nansi", "nour chiba"];
List favourite =[];
bool clickhome =false;
bool clickfav =false;
      @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("tp1"),),
        body: 
        Container(         
           padding: EdgeInsets.only(right: 50 , bottom: 50, top: 20),

  
              child: ListView(
                children: [
                 
                 
                  Row(
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              IconButton(onPressed: ( ){ clickhome =true;
                                setState(() {});},
                                 icon: Icon(Icons.home), ),
                              Text("home"),
                            ],
                          ),
                            
                            ////////////////////////////////
                     
                         Row(
                           children: [
                             IconButton(onPressed: (){ if(favourite!=null)  clickfav=true;
                             setState(() {}); },
                              icon: Icon(Icons.favorite_outline)),
                             Text("favourite"),
                           ],
                         )

                  ],
                      ), 
                
                      ],
                  ), 
////////////////////////////////

                  Row(
                    children: [                    
                    if (clickhome)  ListView.builder ( shrinkWrap: true, itemCount: chanteur.length , itemBuilder: (context, index) => 
                    
                    

            Card (margin:EdgeInsets.symmetric(vertical: 40,horizontal: 10) , color: Color.fromARGB(255, 194, 255, 53),
                 child: Column(children:[Container(height: 40,width:40 , child: Text("${chanteur[index]}",)),
                
                      IconButton(onPressed: (){{ AwesomeDialog(
            context: context,

            btnOkIcon: Icons.favorite,
            btnCancelIcon: Icons.cancel_outlined,
            dialogType: DialogType.question,
            animType: AnimType.scale,
            title: 'ADD TO FAVORITES',
            desc: 'ARE YOU SURE',
            width: 200,
            btnOkText: "Add",
             btnCancelColor: Colors.red,
            btnOkOnPress: () {favourite.add(chanteur[index]);  setState(() { }); print(favourite);},
            )..show();}},
            /////////////////////////////////////
             icon: Icon(Icons.favorite, color: Colors.red,) ),

                ] ) ,

                                   ),
              
            

            
                    )

                  ],),
                  Row(children: [if(clickfav && favourite.length!=0)  Container(child: Text("favorites :", style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 1, 49, 87) ),),),
                        
                 if(clickfav && favourite.length!=0)...List.generate(favourite.length, (i)=> Expanded(child: Card(child: ListTile (title:Text("${chanteur[i]}"), leading: Icon(Icons.cancel),
                        onTap:  (){{ AwesomeDialog(
            context: context,

            btnOkIcon: Icons.favorite,
            btnCancelIcon: Icons.cancel_outlined,
            dialogType: DialogType.question,
            animType: AnimType.scale,
            title: 'REMOVE FROM FAVORITES',
            desc: 'ARE YOU SURE',
            width: 250,
            btnCancelText: "Remove",
            btnCancelColor: Colors.red,
            btnCancelOnPress: (){favourite.remove(chanteur[i]);
            
            if(favourite.length==0){clickfav=false;}
              setState(() { }); print(favourite);},
            )..show();}},
                        ))
                        
                        ))

                      ],)
            
             ])
   
 
          
        ) );
  }
  }