import 'package:flutter/material.dart';
import 'package:whatsapp_app/containts/app_containts.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{
  TextEditingController abc = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Whatsapp'),
          Row(
            children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 20,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner,size: 20,)),
              PopupMenuButton(
                  color: Colors.white,
                  elevation: 11,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(11)),
                  itemBuilder:(_){
                return [
                  PopupMenuItem(onTap: (){},child: Text("New group"),),
                  PopupMenuItem(onTap: (){},child: Text("New broadcast")),
                  PopupMenuItem(onTap: (){},child: Text("Linked devices")),
                  PopupMenuItem(onTap: (){},child: Text("Starred messages")),
                  PopupMenuItem(onTap: (){},child: Text("Payments")),
                  PopupMenuItem(onTap: (){},child: Text("Settings"))
                ];
              })
          ],)
        ],),),
      body:
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: double.infinity,height: 110,
                child:
                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    width: double.infinity,height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xffd5d5d5)),
                    child: TextField(
                      controller: abc,
                      onTap: (){},

                      decoration: InputDecoration(hintText: "Ask Meta AI or Search",hintStyle: TextStyle(fontSize: 15),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                  ),
                  SizedBox(height: 10,),
                  Container(width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      children: [
                      ElevatedButton(onPressed: (){}, child: Text('All',style: TextStyle(fontSize: 10))),
                      SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){}, child: Text('Unread',style: TextStyle(fontSize: 10))),
                      SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){}, child: Text('Favourite',style: TextStyle(fontSize: 10),)),
                      SizedBox(width: 5,),
                      ElevatedButton(onPressed: (){}, child: Text('Groups',style: TextStyle(fontSize: 10),)),
                    ],),
                  ),
                ],),
                ),
                Container(width: double.infinity,height:680,
                  child: SizedBox(height: 680,
                    child: ListView.builder(
                      itemCount: AppContaints.home.length,
                        itemBuilder: (context, index)
                        {
                          return ListTile(
                            leading:
                            CircleAvatar(
                              maxRadius: 30,
                                backgroundImage: AssetImage(AppContaints.home[index]['Pic'])
                            ),
                            title: Text(AppContaints.home[index]['Name']),
                            subtitle: Text(AppContaints.home[index]['Msg']),
                            trailing: Column(crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(AppContaints.home[index]['Time']),
                                CircleAvatar(backgroundColor: Colors.green,
                                  foregroundColor: Colors.white,
                                  maxRadius: 15,child: Text(AppContaints.home[index]['unread']),)
                              ],),
                          );
                        },),
                  )
                ),
              ],
            ),
          )
    );
  }
}
