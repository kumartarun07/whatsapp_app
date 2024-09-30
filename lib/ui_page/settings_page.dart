import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget
{
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings",),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search))
        ],
      ),
      body: Column(
        children: [
          Container(width: double.infinity,
            child: ListTile(
              leading: CircleAvatar(maxRadius: 30,),
              title: Text("Tarun Malviya"),
              subtitle: Text("Hey there! i am using whatsapp"),
              trailing: Icon(Icons.qr_code,color: Colors.green,),

            ),
          ),
          Expanded(
            child: Container(width: double.infinity,
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (_,index){
                    return ListTile(
                      leading: Icon(Icons.favorite_border),
                      title: Text("this is my fav"),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
