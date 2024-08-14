import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:whatsapp_app/containts/app_containts.dart';

class UpdatePage extends StatefulWidget
{  @override
  State<UpdatePage> createState() => _UpdatePageState();
}

class _UpdatePageState extends State<UpdatePage>
{
  @override
  Widget build(BuildContext context)
    {
      return Scaffold(
        appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Update'),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner,size: 20,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt_outlined,size: 20,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 20,)),
              PopupMenuButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                  elevation: 11,
                  position: PopupMenuPosition.under,
                  itemBuilder: (_,)
              {
                return [
                  PopupMenuItem(onTap: (){},child: Text("Status privacy")),
                  PopupMenuItem(onTap: (){},child: Text("Create channel")),
                  PopupMenuItem(onTap: (){},child: Text("Settings")),
                ];
              })
            ],)],),
           ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height:150,width: double.infinity,
            child:Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Status',style: TextStyle(fontSize: 20),),
                Container(height: 80,width: double.infinity,
                  child:Row(
                    children: [
                      Stack(alignment: Alignment.bottomRight,
                        children: [
                          Container(height:50,width: 50,
                              decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                              border: Border.all(width: 2,color: Colors.grey)
                              ),
                              child: CircleAvatar(maxRadius: 30,backgroundImage: AssetImage("assets/images/ms.jpg"),)),
                          CircleAvatar(
                            maxRadius: 10,backgroundColor: Colors.green,
                          child:  Icon(Icons.add,size: 15,color: Colors.white,),
                          )
                        ],
                      ),
                      SizedBox(width: 10,),
                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('My status'),
                          Text('Tap to add status update')
                        ],
                      ),
                    ],
                  )

                ),
                Text('Recent updates',style: TextStyle(fontSize: 20),),
              ],
            ),
            ),

            Container(width: double.infinity,height: 650,
              child: ListView.builder(
                  itemCount: AppContaints.home.length,
                  itemBuilder:(context, index)
                  {
                   return ListTile(
                     leading: Container(height: 50,width: 50,
                       decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                       border:Border.all(width:2,color: Colors.grey )
                       ),
                       child: CircleAvatar(maxRadius: 30,foregroundColor: Colors.red,
                         backgroundImage: AssetImage(AppContaints.home[index]['Pic']),
                          ),
                     ),
                     title: Text(AppContaints.home[index]['Name']),
                     subtitle: Text(AppContaints.home[index]['Time']),
                   ) ;
                  },),

            ),
          ],
        ),
      ),
      );
  }


  }
