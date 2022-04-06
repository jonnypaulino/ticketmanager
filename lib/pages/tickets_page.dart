import 'package:flutter/material.dart';
import 'ticketGames.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  State<TicketsPage> createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'),
                  fit: BoxFit.cover))),
      SingleChildScrollView(
        padding: EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            SizedBox(height: 10),
            builderTicket(
                context: context,
                mandante: 'assets/images/manchestercity-logo.png',
                mnome: 'MANCHESTER CITY',
                visitante: 'assets/images/atlm.png',
                vnome: 'ATLÉTICO MADRID',
                stadium: 'Etihad Stadium',
                data: 'TER, 05/04',
                hora: '16:00'),
            builderTicket(
                context: context,
                mandante: 'assets/images/logo-benfica.png',
                mnome: 'BENFICA',
                visitante: 'assets/images/liverpool-logo.png',
                vnome: 'LIVERPOOL',
                stadium: 'Estádio da Luz',
                data: 'TER, 05/04',
                hora: '16:00'),
            builderTicket(
                context: context,
                mandante: 'assets/images/villarreal-logo.png',
                mnome: 'VILLARREAL',
                visitante: 'assets/images/bayern-munich-logo.png',
                vnome: 'BAYERN',
                stadium: 'El Madrigal',
                data: ' QUA, 06/04',
                hora: '16:00'),
            builderTicket(
                context: context,
                mandante: 'assets/images/cheque.png',
                mnome: 'CHELSEA',
                visitante: 'assets/images/Real.png',
                vnome: 'REAL MADRID',
                stadium: 'Stamford Bridge',
                data: ' QUA, 06/04',
                hora: '16:00')
          ],
        ),
      ),
    ]);
  }
}

GestureDetector builderTicket(
    {required BuildContext context,
    required String mandante,
    required String mnome,
    required String visitante,
    required String vnome,
    required String stadium,
    required String data,
    required String hora}) {
  return GestureDetector(
    onTap: () {
      // print("clicou");
      // Navigator.push(
      //     context,  MaterialPageRoute(builder: (context) => MatchDetails()));
      Navigator.pushReplacementNamed(context, '/ticketGames', arguments: {
        "mandante": mandante,
        "visitante": visitante,
        "mnome": mnome,
        "vnome": vnome,
        "stadium": stadium,
        "data": data,
        "hora": hora
      });
    },
    child: SafeArea(
      child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
          elevation: 4.0,
          color: Colors.amber,
          child: Container(
              padding: EdgeInsets.only(left: 14, top: 14, right: 14),
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/theme.png'),
                      fit: BoxFit.cover)),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              child: Image.asset('$mandante')),
                          SizedBox(height: 3),
                          Text("$mnome",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8))
                        ],
                      ),
                      SizedBox(width: 3),
                      Text("vs",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 10)),
                      SizedBox(width: 3),
                      Column(
                        children: [
                          Container(
                              height: 70,
                              width: 70,
                              child: Image.asset('$visitante')),
                          SizedBox(height: 3),
                          Text("$vnome",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 8))
                        ],
                      )
                    ]),
                    SizedBox(height: 8),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "$data",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                          Text("$hora",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10))
                        ],
                      ),
                    ),
                  ]))),
    ),
  );
}
