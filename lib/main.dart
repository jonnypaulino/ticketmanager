import 'package:flutter/material.dart';
import 'package:ticketmanager/pages/TicketsPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: SafeArea(child: TicketsPage())),
    );
  }
}
