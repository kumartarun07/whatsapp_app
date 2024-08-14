import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text("Communities"),
         Row(
           children: [
           IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
             IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined),),
             PopupMenuButton(itemBuilder: (_){
               return [PopupMenuItem(onTap: (){},child: Text("Settings"))];
             })
         ],),
       ],
     ),),
     body: Container(width: double.infinity,color: Colors.white,height: 100,
       child: Row(
         children: [
         Container(height: 70,width: 70,
           margin: EdgeInsets.symmetric(horizontal: 10),
           decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Colors.grey.shade300,),
           child: IconButton(onPressed: (){},icon: Icon(Icons.people_outline_outlined,size: 50,),),),
         Text("New community"),
       ],),

     ),

   );
  }
}
