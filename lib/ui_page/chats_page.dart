import 'package:flutter/material.dart';
import 'package:whatsapp_app/containts/app_containts.dart';

class ChatsPage extends StatelessWidget
{
   int index;
   ChatsPage({required this.index});
  @override
  Widget build(BuildContext context)
  {
    return  index>=0?Scaffold(
      appBar:AppBar(leadingWidth: 30,
        title: Row(
          children: [
            CircleAvatar(backgroundImage: AssetImage('${AppContaints.home[index]["Pic"]}'),maxRadius: 25,),
            SizedBox(width: 15,),
            Text("${AppContaints.home[index]["Name"]}",style:TextStyle(fontSize: 15),),
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.videocam_outlined)),
          IconButton(onPressed: (){}, icon: Icon(Icons.call)),
          PopupMenuButton(
              color: Colors.white,
              elevation: 11,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
              itemBuilder:(_){
                return [
                  PopupMenuItem(onTap: (){},child: Text("View contact"),),
                  PopupMenuItem(onTap: (){},child: Text("Media, links, and docs")),
                  PopupMenuItem(onTap: (){},child: Text("Search")),
                  PopupMenuItem(onTap: (){},child: Text("Mute notifications")),
                  PopupMenuItem(onTap: (){},child: Text("Disappearing messages")),
                  PopupMenuItem(onTap: (){},child: Text("Wallpaper")),
                  PopupMenuItem(onTap: (){},child: Text("More")),
                ];
              })
        ],
      ),
      body: SizedBox(width: MediaQuery.of(context).size.width,
        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(crossAxisAlignment: CrossAxisAlignment.end,
              children:[
                Container(height: 50,
                width: 430,
                child: TextField(maxLines: null,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black,),
                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions,size: 30,)),
                    suffixIcon:  Row(mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(onPressed: (){}, icon: Icon(Icons.attach_file,size: 30,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.currency_rupee,size: 30,)),
                        IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 30,)),
                      ],
                    ),

                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100),),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
                    enabled: true,
                  ),
                ),
              ),
                SizedBox(width: 10,),
                CircleAvatar(maxRadius: 25,
                  backgroundColor: Colors.green,
                    child: Icon(Icons.keyboard_voice_sharp,size: 25,color: Colors.white,)),
                   ] ),
          ],
        ),
      ),
    ):SizedBox(
      child: Image(image: AssetImage("assets/images/noData.png"),fit: BoxFit.cover,),
    );
  }
}

/*

Center(
child: Column(
children: [
Icon(Icons.whatshot),
Text("Whatsapp for Windows",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
Text("send and receive message without keeping your phone online.",style: TextStyle(fontSize: 15),),
Text("Use Whatsapp on up to 4 linked devices and 1 phone at the same time.",style: TextStyle(fontSize: 15),),

],
),
),*/
