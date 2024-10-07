import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
class Itemdetails extends StatefulWidget{
  final data;
  const Itemdetails ({super.key, this.data});
  
  State <Itemdetails> createState()=>  _ItemdetailsState();
  }
   @override
 
 class _ItemdetailsState extends State<Itemdetails>{


 @override
  Widget build(BuildContext context){
    return Scaffold(endDrawer: Drawer(),
      appBar: AppBar(backgroundColor: Colors.grey[200], elevation: 0.0,iconTheme:IconThemeData(color: Colors.black),
      centerTitle: true,
      title: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.business,),
          Text("my new e-", style: TextStyle(color:Colors.black),),
          Text("commerce", style: TextStyle(color:Colors.orange),)
        ],
      ),
      
      
      ),
      body: ListView(children: [
         Container(padding: EdgeInsets.all(20), ),
       Image.asset(widget.data["image"], height: 300), 
       Container(padding: EdgeInsets.all(10),
       child: Text(widget.data["title"], textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
        Container(padding: EdgeInsets.only(bottom: 10), 
        child: Text(widget.data["description"],textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[600]),)),
        Container( padding: EdgeInsets.only(bottom: 10),
        child: Text(widget.data["price"],textAlign: TextAlign.center,style: TextStyle(color: Colors.orange, fontWeight: FontWeight.bold, fontSize: 16))),

      Row(mainAxisAlignment: MainAxisAlignment.center
      , children: [
        Text("Color :"), 
        SizedBox(width: 15,),

        Container(height: 20,width: 20, decoration: BoxDecoration(color: Colors.grey,
        borderRadius: BorderRadius.circular(25), border: Border.all(color: Colors.orange)
        ),),
         Text("  Grey"),
          SizedBox(width:15),

        Container(height: 20,width: 20, decoration: BoxDecoration(color: Colors.black,
        borderRadius: BorderRadius.circular(25),)), Text("  black") ],),
     
       Container(padding: EdgeInsets.all(15), child: Text("Size : 25  32  34  48", textAlign: TextAlign.center,)),

       Container(margin: EdgeInsets.symmetric(horizontal: 140), child: MaterialButton(
        onPressed: (){Navigator.of(context).pushNamed("exemple1");} 
       
       ,child: Text("Add to cart", style: TextStyle(color: Colors.white),), color: Colors.black,),
       
       ), Container(margin: EdgeInsets.symmetric(horizontal: 140), child: MaterialButton(
     
        onPressed:  (){
           
          AwesomeDialog(
            context: context,

            btnOkIcon: Icons.ac_unit,
            btnCancelIcon: Icons.cancel_outlined,
            dialogType: DialogType.warning,
            animType: AnimType.rightSlide,
            title: 'PANIER',
            desc: 'ARE YOU SURE',
            btnCancelOnPress: () {},
            btnOkOnPress: () {},
            )..show();
           
          } 
       
       ,child: Text("ajouter au panier", style: TextStyle(color: Colors.white),), color: Color.fromARGB(255, 119, 9, 9),),
       
       )



      ],),


 

    )  
    ;
  }
  }