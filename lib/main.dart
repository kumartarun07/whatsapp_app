import 'package:flutter/material.dart';
import 'package:whatsapp_app/ui_page/calls_page.dart';
import 'package:whatsapp_app/ui_page/communities.dart';
import 'package:whatsapp_app/ui_page/home_page.dart';
import 'package:whatsapp_app/navigator_page.dart';
import 'package:whatsapp_app/ui_page/update_page.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       home: NavigatorPage(),
     );
  }
}
