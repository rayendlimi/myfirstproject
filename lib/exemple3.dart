import 'dart:convert';
import 'dart:js';
import 'package:flutter/material.dart';
import 'package:untitled/homepage.dart';
import 'package:http/http.dart';

class exemple3 extends StatefulWidget{
  const exemple3 ({super.key});
  
  State <exemple3> createState()=>  _exemplestate();
  }
  class _exemplestate extends State <exemple3>{

Future <List> getData() async { var response =await get(Uri.parse("https://jsonplaceholder.typicode.com/users"));
              List responsebody= jsonDecode(response.body);
              return responsebody; }
      @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: Text("connect with a database")),
        body: FutureBuilder<List<dynamic>>(future: getData() ,
        
        builder: (context, snapshot) { 
          return ListView.builder(itemCount: snapshot.data!.length, 
          
          
          itemBuilder: ( (context, i) {
            if (snapshot.connectionState== ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator(),);
            }
            
      
            return 
           Center(child: ListTile(title: Text("${snapshot.data![i]["title"]}")));  } ));


        })
    );
  }
  }
  
  //  if (loading) Center(child: CircularProgressIndicator(),),
            
           // ...List.generate(news.length, ((index) => 
          //Card( child: ListTile(title: Text("${news[index]["email"]}"),
            //                   subtitle:Text("your ID ${news[index]["id"]}"),),)  )), 
                  