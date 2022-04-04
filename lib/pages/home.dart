import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/champions-back.png'),
                  fit: BoxFit.cover)),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FlatButton(
                    color: Color.fromARGB(255, 3, 53, 95),
                    textColor: Colors.white,
                    child: Text('FlatButton Ativo'),
                    onPressed: () => Navigator.pushNamed(context, '/games'),
                  ),
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
