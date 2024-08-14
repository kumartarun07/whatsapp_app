import 'package:flutter/material.dart';
import 'package:whatsapp_app/containts/app_containts.dart';

class CallsPage extends StatelessWidget {  @override
  Widget build(BuildContext context)
{
      return Scaffold(
        appBar: AppBar(title: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text("Calls"),
          Row(children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_scanner)),
            IconButton(onPressed: (){}, icon:Icon(Icons.camera_alt_outlined)),
            IconButton(onPressed: (){}, icon: Icon(Icons.search)),
            PopupMenuButton(
              position:PopupMenuPosition.under ,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                itemBuilder: (_){
              return[
                PopupMenuItem(onTap: (){},child: Text("Clear call log",)),
                PopupMenuItem(onTap: (){},child: Text("Settings",))
              ];
            })
          ],)
        ],
        ),),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Container(height: 130,width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("Favourites",),
                Row(
                  children: [
                    Container(
                      child: Icon(Icons.favorite,color: Colors.white,),
                      height: 60,width: 60,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.green),
                    ),
                    SizedBox(width: 20,),
                    Text("Add to Favourites")
                  ],
                ),
                Text("Recent")
              ],
            ),
            ),
              Container(
                height: 650,width: double.infinity,
              child: ListView.builder(
                  itemCount: Contact.calls.length,
                  itemBuilder: (_,index)
                  {
                    return ListTile(
                      leading: CircleAvatar(maxRadius: 30,
                      backgroundImage: AssetImage(AppContaints.home[index]['Pic']),
                      ),
                      title: Text(AppContaints.home[index]['Name']),
                      subtitle: Row(
                        children: [
                          Text(Contact.calls[index]['date']),
                          Text(AppContaints.home[index]['Time'])
                        ],
                      ),
                      trailing: Icon(Icons.call_outlined,color: Colors.black,),
                    );
                  }),
              )
          ],),
        ),
      );

  }
}
