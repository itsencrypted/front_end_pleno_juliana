import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:front_end_pleno_juliana/components/future_builders.dart';
import 'package:front_end_pleno_juliana/constants.dart';
import 'package:front_end_pleno_juliana/repos/investment_repo_impl.dart';
import 'package:intl/intl.dart';


class InvestmentScreen extends StatefulWidget {
  static const String id = 'investment_screen';

  @override
  _InvestmentScreenState createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen> {

  final repository = InvestmentRepoImpl();
  var f = new NumberFormat("#,###,###,###", "en_US");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 2.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 25),
                    child: Row(children: [
                      Text(
                        'Seu resumo',
                        style: kHighlightedText,
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      )
                    ]),
                  ),
                  Text('Valor investido', style: kMyText),
                  BuildTotal(),

                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Rentabilidade/mês',
                          style: kMyText,
                        ),
                        Spacer(),
                        Container(width: 150, height: 40, child:
                            BuildProfitability()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'CDI',
                          style: kMyText,
                        ),
                        Spacer(),
                        Container(width: 150, height: 40, child: BuildCDI()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Ganho/mês',
                          style: kMyText,
                        ),
                        Spacer(),
                        Container(width: 150, height: 40, child: BuildGain()),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0),
                    child: Divider(
                      height: 30,
                      color: Colors.grey,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, bottom: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlineButton(
                          borderSide: BorderSide(color: Colors.indigo),
                          onPressed: () {},
                          child: Text('VER MAIS',
                              style: TextStyle(
                                  color: Colors.indigo,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16)),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
