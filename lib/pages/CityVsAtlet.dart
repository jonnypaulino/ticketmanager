import 'dart:ffi';

import 'package:flutter/material.dart';

class CityVsAtlet extends StatefulWidget {
  @override
  State<CityVsAtlet> createState() => _HomePageState();
}

class _HomePageState extends State<CityVsAtlet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body:
      Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/champions-back.png'),
                    fit: BoxFit.cover)),
            child: new Container(
              margin: const EdgeInsets.only(top: 150.0, bottom: 25.0, left: 12.0, right: 12.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/fundoIngresso.png'),
                      colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8),
                          BlendMode.dstATop),
                      scale: 0.3)),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 95.0, bottom: 620.0),
                child: Row(
                  children: [
                    Text(
                      'Compre o seu ingresso!',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 135.0, bottom: 475.0),
                child: Row(
                  children: [
                    Text(
                      '06/04 - Allianz Arena',
                      style: TextStyle(
                          fontSize: 13.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 90.0, bottom: 380.0),
                child: Row(
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/bayern-munich-logo.png',
                        height: 55.0,
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      child: Text(
                        'X',
                        style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none
                        ),
                      ),
                    ),
                    SizedBox(width: 50),
                    Container(
                      child: Image.asset(
                        'assets/images/villarreal-logo.png',
                        height: 55.0,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 75.0, top: 400.0),
                child: Row(
                  children: [
                    Text(
                      'Quantidade',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    ),
                    SizedBox(width: 65),
                    Container(
                        width: 100,
                        height: 30,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(137, 139, 136, 0.85),
                        ),
                        child:
                        TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          decoration: InputDecoration(counterText: ''),
                        ),
                        )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 75.0, top: 500.0),
                child: Row(
                  children: [
                    Text(
                      'Valor Final',
                      style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.none
                      ),
                    ),
                    SizedBox(width: 71),
                    Container(
                      alignment: Alignment.center,
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromRGBO(137, 139, 136, 0.85),
                      ),
                      child:
                      Text(
                          'X Reais'
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Color.fromRGBO(14, 30, 91, 1)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                              )
                          )
                      ),
                      child: Text(
                        'Comprar',
                        style: TextStyle(
                            fontSize: 22.0,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.none
                        ),
                      ),
                      onPressed: (){
                        print('comprou');
                      },
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
