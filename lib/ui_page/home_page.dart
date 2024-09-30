import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:whatsapp_app/containts/app_containts.dart';
import 'package:whatsapp_app/ui_page/chats_page.dart';
import 'package:whatsapp_app/ui_page/settings_page.dart';

class HomePage extends StatefulWidget
{
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
{

    MediaQueryData?mqData;
  TextEditingController abc = TextEditingController();
  @override
  Widget build(BuildContext context)
  {
    return  MediaQuery.of(context).orientation==Orientation.portrait ?
    Scaffold(
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
                  PopupMenuItem(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
                  },child: Text("Settings"))
                ];
              })
          ],)
        ],),),
      body:
          MediaQuery.of(context).orientation==Orientation.portrait ?
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  width: double.infinity,height: 40,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xffd5d5d5)),
                  child: TextField(
                    controller: abc,
                    onTap: (){},
                    decoration: InputDecoration(
                        prefixIcon: Lottie.asset("assets/lottie/ai.json",),
                        hintText: "Ask Meta AI or Search",hintStyle: TextStyle(fontSize: 15),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                ),
                SizedBox(height: 10,),
                Container(width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
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
                SizedBox(height: 10,),
                Container(width: double.infinity,height:680,
                    child: SizedBox(height: 680,
                      child: ListView.builder(
                        itemCount: AppContaints.home.length,
                        itemBuilder: (context, index)
                        {
                          return ListTile(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage(index: index)));
                              setState(() {
                               // AppContaints.SelectedIndex=index;
                              });
                            },
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
          ):
          Row(
            children: [
             //Expanded(child: NavigatorPage()),
            Expanded(flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15),
                        width: double.infinity,height: 40,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xffd5d5d5)),
                        child: TextField(
                          controller: abc,
                          onTap: (){},
                          decoration: InputDecoration(
                              prefixIcon: Lottie.asset("assets/lottie/ai.json"),
                              hintText: "Ask Meta AI or Search",hintStyle: TextStyle(fontSize: 15),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                      ),
                      SizedBox(height: 10,),
                      Container(width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Row(mainAxisAlignment: MainAxisAlignment.start,
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
                      SizedBox(height: 10,),
                      Container(width: double.infinity,height:680,
                          child: SizedBox(height: 680,
                            child: ListView.builder(
                              itemCount: AppContaints.home.length,
                              itemBuilder: (context, index)
                              {
                                return ListTile(
                                  onTap: (){
                                   if(MediaQuery.of(context).orientation==Orientation.portrait){
                                     Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage(index: index)));
                                   }
                                   else{
                                     AppContaints.SelectedIndex=index;
                                     setState(() {

                                     });
                                   }
                                  },
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
                )),
              SizedBox(width: 10,),
              Expanded(
                  flex: 3,
                  child: ChatsPage(index:AppContaints.SelectedIndex,))
            ],
          ),
      floatingActionButton: Column(mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){},
            backgroundColor: Colors.white,elevation: 11,
            child: Lottie.asset("assets/lottie/ai.json"),
          ),
          SizedBox(height: 20,),
          FloatingActionButton(onPressed: (){},
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Icon(Icons.add_comment,size: 30,),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,elevation: 11,
          )
        ],
      ),
    ):
    Scaffold(
     /* appBar: AppBar(
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
                        PopupMenuItem(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>SettingsPage()));
                        },child: Text("Settings"))
                      ];
                    })
              ],)
          ],),),*/
      body:
      Row(
        children: [
          //Expanded(child: NavigatorPage()),
          Expanded(flex: 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      width: double.infinity,height: 40,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color(0xffd5d5d5)),
                      child: TextField(
                        controller: abc,
                        onTap: (){},
                        decoration: InputDecoration(
                            prefixIcon: Lottie.asset("assets/lottie/ai.json"),
                            hintText: "Ask Meta AI or Search",hintStyle: TextStyle(fontSize: 15),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),),
                    ),
                    SizedBox(height: 10,),
                   /* Container(width: double.infinity,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ElevatedButton(onPressed: (){}, child: Text('All',style: TextStyle(fontSize: 10))),
                          SizedBox(width: 5,),
                          ElevatedButton(onPressed: (){}, child: Text('Unread',style: TextStyle(fontSize: 10))),
                          SizedBox(width: 5,),
                          ElevatedButton(onPressed: (){}, child: Text('Favourite',style: TextStyle(fontSize: 10),)),
                          SizedBox(width: 5,),
                          ElevatedButton(onPressed: (){}, child: Text('Groups',style: TextStyle(fontSize: 10),)),
                        ],),
                    ),*/
                    SizedBox(height: 10,),
                    Container(width: double.infinity,height:680,
                        child: SizedBox(height: 680,
                          child: ListView.builder(
                            itemCount: AppContaints.home.length,
                            itemBuilder: (context, index)
                            {
                              return ListTile(
                                onTap: (){
                                  if(MediaQuery.of(context).orientation==Orientation.portrait){
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage(index: index)));
                                  }
                                  else{
                                    AppContaints.SelectedIndex=index;
                                    setState(() {

                                    });
                                  }
                                },
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
              )),
          SizedBox(width: 10,),
          Expanded(
              flex: 3,
              child: ChatsPage(index:AppContaints.SelectedIndex,))
        ],
      ),

    );
  }

 /* Widget myHome(){
    return SingleChildScrollView(
      child: Column(
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
          Container(width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Row(mainAxisAlignment: MainAxisAlignment.start,
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
          SizedBox(height: 10,),
          Container(width: double.infinity,height:680,
              child: SizedBox(height: 680,
                child: ListView.builder(
                  itemCount: AppContaints.home.length,
                  itemBuilder: (context, index)
                  {
                    return ListTile(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatsPage(index: index)));
                      },
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
    );
  }*/
}
