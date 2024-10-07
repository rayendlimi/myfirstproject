import 'dart:html';
import 'package:flutter/material.dart';
import 'package:untitled/details.dart';
import 'package:untitled/exemple4.dart';
import 'package:untitled/tp.dart';

class homepage extends StatefulWidget{
  const homepage ({super.key});
  
  State <homepage> createState()=>  _homepagestate();
  }
  class _homepagestate extends State<homepage>{

List<Map> item=[{ "iconame": Icons.shopping_cart_checkout_sharp, "title" : "Tout"},
{ "iconame": Icons.donut_large_outlined , "title" : "pull"},
{ "iconame": Icons.sell , "title" : "pontallon"},
{ "iconame": Icons.accessibility_new, "title" : "combinaison"},
] ;
List<Map> item1=[  
  
        {"image": "images/vet1.jpg",
      "title" : "combinaison A",
        "description":  "combinaison noir foncé",
        "price": "100\$"},


        { "image": "images/1.jpg",
        "title" : "T-Shirt",
          "description": "T-Shirt noir et blanc ", 
          "price": "199\$"
          },


        { "image": "images/pebblely.png",
        "title" : "Sweater of Luffy", 
        "description": "sweater of Monkey's Lufy ", 
        "price": "50\$"},


        { "image": "images/chaise1.jpg",
          "title" : "chaise de comping",
          "description": "chaise confortable ",
            "price": "40\$"},


        { "image": "images/vet2.jpg",
        "title" : "Combinaison B",
          "description": "combinaison blanc ", 
          "price": "110\$"},


      { "image": "images/vet3.jpg", 
      "title" : "ombinaison C",
      "description": "combinaison noir ",
        "price": "150\$"},
   

  ];




  @override
  Widget build(BuildContext context){

 return Scaffold( bottomNavigationBar: BottomNavigationBar(iconSize: 20 ,items: [
  BottomNavigationBarItem(icon: Icon(Icons.home) ,label: "home"),
    BottomNavigationBarItem(icon: Icon(Icons.shopping_bag) ,label: "panier"),
  BottomNavigationBarItem(icon: Icon(Icons.person) ,label: "compte")

 ]),
    appBar:AppBar(actions: [
     IconButton(onPressed: ()=> showSearch(context: context, delegate: customsearch())
     , icon:Icon(Icons.search))
    ],) ,
    body: Container(padding: EdgeInsets.all(15), 
    child: ListView(children: [
      Row(children: [
    Expanded(child: TextFormField(decoration: InputDecoration(hintText: "Search ",
     border: InputBorder.none, filled: true,prefixIcon: Icon(Icons.search_rounded) ,fillColor: Colors.grey[200]), )), 
      
        Padding(
          padding:  EdgeInsets.only(left: 10),
          child: Icon(Icons.menu),
        )
      ],), Container(height: 30,),

        Container(child: MaterialButton(onPressed: ()=> Navigator.of(context).push(MaterialPageRoute(builder: (context)=>tp() )), child:Text("tp"))),
      Text("Catégories", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),), Container(height: 20,),
      
         Center(
           child: Container(height: 89, padding: EdgeInsets.symmetric(horizontal: 40),
            child: ListView.builder( scrollDirection: Axis.horizontal, itemCount: item.length,
            itemBuilder: (context, i) => 
              Container(margin: EdgeInsets.only(right: 12),
                child: InkWell(onTap: () => Navigator.of(context).pushNamed("exemple3"),
                  child: Column(children: [
                    Container(padding: EdgeInsets.all(10) ,decoration:
                    BoxDecoration (color: Color.fromARGB(255, 255, 188, 88), borderRadius: BorderRadius.circular(90)),
                    child: Icon(item[i]['iconame'],size: 40,color: Colors.black,),),
                     Text(item[i]["title"], style:TextStyle (fontWeight :FontWeight.bold,fontSize: 20))
                  ],),
                ),
              )
            ),
        ),
         ),
      
      Container(child: Text("Best Selling", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)),

      GridView.builder(physics: NeverScrollableScrollPhysics(),shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, mainAxisExtent: 300,),
       itemCount: item1.length,
        itemBuilder: (context, i){
           return InkWell(onTap: (() => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Itemdetails(data:item1[i] , )    ))),
             child: Card(child:  Column(children: [
          Container(padding: EdgeInsets.all(15), color: Colors.grey[200], child: Image.asset(item1[i]["image"],height: 150,fit: BoxFit.fill)),
          Text(item1[i]["title"]),  Container(height: 10,),
          Text(item1[i]["description"], style: TextStyle(fontSize: 14, color: Colors.grey)), Container(height: 10,),
             Text(item1[i]["price"], style: TextStyle(fontSize: 14, color: Colors.orange),)
        ],),),
           );
         
        
     } ,)
 
    ]),),
   );
}}

class customsearch extends SearchDelegate{
  List username=["rayen", "razer","dlimi","ritej","ahmed", "doussa"];
    List ?filtername;
  @override
  List<Widget>? buildActions(Object context) { 
    return
[ IconButton(onPressed: () { query="";}
, icon: Icon(Icons.cancel))];
  }

  @override
  Widget? buildLeading(BuildContext context) {return
   IconButton(onPressed: () {close(context, null);}, icon: Icon(Icons.keyboard_backspace_outlined));


  }
  
  
  @override
  Widget buildResults(BuildContext context) {
return Image.asset("images/1.jpg");
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    if(query==""){return ListView.builder(itemCount: username.length,itemBuilder: (context, i){
  return InkWell(onTap: () {showResults(context);
  },
    child: Card(child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text("${username[i]}", style: TextStyle(fontSize: 20, color: Colors.blue),),
    ),),
  );
} 


);}
 else {filtername= username.where((element) => element.startsWith(query),).toList();

  return ListView.builder(itemCount: filtername!.length ,itemBuilder: (context, i){
  return InkWell(onTap: () {showResults(context);
  },
    child: Card(child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Text("${filtername![i]}", style: TextStyle(fontSize: 20, color: Colors.blue),),
    ),),
  );
} 


);}

  }

}