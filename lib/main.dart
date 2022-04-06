import 'package:flutter/material.dart';
import 'package:ticketmanager/pages/match_detail_page.dart';
import 'package:ticketmanager/pages/tickets_page.dart';
import 'package:ticketmanager/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        //home: Scaffold(body: SafeArea(child: TicketsPage())),
        title: 'Champions',
        initialRoute: '/Home',
        routes: <String, WidgetBuilder>{
          '/': (context) => Home(),
          '/games': (context) => TicketsPage(),
          '/matche_detail_page': (context) => MatchDetails(),
          // '/CitVsAtl': (context) => CityVsAtlet(),
        });
  }
}
