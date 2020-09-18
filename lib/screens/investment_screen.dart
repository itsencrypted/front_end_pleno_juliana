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
                    padding: const EdgeInsets.symmetric(horizontal: 20.0,
                        vertical: 25),
                    child: Row(
                        children: [Text('Seu resumo', style: kHighlightedText,)
                          , Spacer(),
                          Icon
                            (Icons.more_vert, color: Colors.grey,)
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      'Valor investido', style: kMyText),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text('R\$ 3.200.876,00', style: kHighlightedText,),
                  ),
                  BuildTotal(),
                  Row(
                    children: [
                      Text('Rentabilidade/mês', style: kMyText,),
                      SizedBox(width: 10,),
                      BuildProfitability(),
                    ],
                  ),
                  Row(
                    children: [
                      Text('CDI', style: kMyText,),
                      Spacer(),
                      BuildCDI(),
                    ],
                  ),
                  Row(
                    children: [
                      Text('Ganho/mês', style: kMyText,),
                      Spacer(),
                      BuildGain(),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.symmetric(horizontal: 25,
                  //       vertical: 15),
                  //   child: Column(
                  //     children: [
                  //       Row(children: [
                  //         Text('Rentabilidade/mês', style: kMyText,),
                  //         Spacer(),
                  //         Text('2.767%', style: kBlueSmaller,)
                  //       ],),
                  //       SizedBox(height: 10,),
                  //       Row(children: [
                  //         Text('CDI', style: kMyText,),
                  //         Spacer(),
                  //         Text('3.45%', style: kBlueSmaller,),
                  //       ],),
                  //       SizedBox(height: 10,),
                  //       Row(children: [
                  //         Text('Ganho/mês', style: kMyText,),
                  //         Spacer(),
                  //         Text('R\$ 1833,23', style: kBlueSmaller,)
                  //       ],),
                  //       SizedBox(height: 10,),
                  //       Divider(color: Colors.grey,),
                  //       Row(
                  //         mainAxisAlignment: MainAxisAlignment.end,
                  //         children: [
                  //           OutlineButton(
                  //             borderSide: BorderSide(color: Colors.indigo),
                  //             onPressed: (){},
                  //             child: Text('VER MAIS', style: TextStyle(color:
                  //             Colors.indigo, fontWeight: FontWeight.bold,
                  //                 fontSize: 16)),
                  //             shape: RoundedRectangleBorder(
                  //               borderRadius: BorderRadius.circular(30),
                  //             ),
                  //           ),
                  //         ],
                  //       ),
                  //     ],
                  //   ),
                  // )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
