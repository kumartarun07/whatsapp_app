import 'package:flutter/material.dart';
import 'package:whatsapp_app/ui_page/calls_page.dart';
import 'package:whatsapp_app/ui_page/communities.dart';
import 'package:whatsapp_app/ui_page/home_page.dart';
import 'package:whatsapp_app/ui_page/update_page.dart';

class NavigatorPage extends StatefulWidget
{
  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage>
{

int selectedIndex=0;
List<Widget>navPage =
          [
            HomePage(),
            UpdatePage(),
            Communities(),
            CallsPage(),
          ];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: navPage[selectedIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.green,
        destinations: [
          NavigationDestination(icon: Icon(Icons.chat), label:"Chats"),
          NavigationDestination(icon: Icon(Icons.update), label: "Update"),
          NavigationDestination(icon: Icon(Icons.people_outline_outlined), label: "communities"),
          NavigationDestination(icon: Icon(Icons.call_outlined), label: "Calls")
        ],
        selectedIndex: selectedIndex,
        onDestinationSelected: (value) {
          selectedIndex = value;
          setState(() {

          });
        },
      ),
    );
  }
}