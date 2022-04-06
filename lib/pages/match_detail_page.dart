import 'package:flutter/material.dart';

class MatchDetails extends StatelessWidget {
  const MatchDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context)!.settings.arguments as Map;

    String mandante = routeArgs["mandante"];
    String visitante = routeArgs["visitante"];
    String nnome = routeArgs["mnome"];
    String vnome = routeArgs["vnome"];
    String data = routeArgs["data"];
    String hora = routeArgs["hora"];

    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Container(height: 70, width: 70, child: Image.asset(mandante)),
        Container(height: 70, width: 70, child: Image.asset(visitante)),
        Center(
            child: TextButton(
          child: Text("voltar"),
          onPressed: () {
            Navigator.pop(context);
          },
        ))
      ]),
    );
  }
}
