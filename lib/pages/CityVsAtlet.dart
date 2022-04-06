import 'dart:ffi';

import 'package:flutter/material.dart';

class CityVsAtlet extends StatefulWidget {
  @override
  State<CityVsAtlet> createState() => _HomePageState();
}

class _HomePageState extends State<CityVsAtlet> {

  var _jogo = [];

  var _qualJogo = 1;

  List decideJogo(int _qualJogo){

    if(_qualJogo == 1){
      _jogo = ['05/04 - Etihad Stadium', 'assets/images/manchestercity-logo.png',
        'assets/images/Atletico-Madrid-Logo.png'];
    }
    if(_qualJogo == 2){
      _jogo = ['05/04 - Estádio da Luz', 'assets/images/logo-benfica.png',
        'assets/images/liverpool-logo.png'];
    }
    if(_qualJogo == 3){
      _jogo = ['06/04 - El Madrigal', 'assets/images/villarreal-logo.png',
        'assets/images/bayern-munich-logo.png'];
    }
    if(_qualJogo == 4){
      _jogo = ['06/04 - Stamford Bridge', 'assets/images/che.png',
        'assets/images/Rm.png'];
    }

    return _jogo;

  }

  var _valorString = 'RS 0';

  void pegaQuantidade(String quantidade){
    var quantFinal = int.parse(quantidade);
    print(_valorString);
    setState(() {
      _valorString = 'RS ' + valorIngresso(quantFinal).toString();
    });
  }

  int valorIngresso(int quantFinal){
    var valorPadrao = 120;
    var valorFinal;
    valorFinal = valorPadrao*quantFinal;
    return valorFinal;
  }

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
                      decideJogo(_qualJogo)[0],
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
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 92.0, bottom: 380.0),
                child: Row(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Image.asset(
                              decideJogo(_qualJogo)[1],
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
                              decideJogo(_qualJogo)[2],
                              height: 55.0,
                            ),
                          )
                        ],
                      ),
                    ),
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
                        TextFormField(
                          keyboardType: TextInputType.number,
                          maxLength: 3,
                          decoration: InputDecoration(
                              counterText: '',
                            contentPadding: EdgeInsets.only(left: 45, bottom: 16.9)
                          ),
                          initialValue: 0.toString(),
                          onChanged: pegaQuantidade,
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
                          _valorString
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
