import 'package:flutter/material.dart';
import 'package:ticketmanager/pages/TicketsPage.dart';
import 'package:ticketmanager/pages/home.dart';
import 'package:ticketmanager/pages/CityVsAtlet.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: Scaffold(body: SafeArea(child: TicketsPage())),
        title: 'Champions',
        initialRoute: '/',
        routes: <String, WidgetBuilder>{
          '/': (context) => Home(),
          '/games': (context) => TicketsPage(),
          '/ticketScreen': (context) => CityVsAtlet(),
        });
  }
}
