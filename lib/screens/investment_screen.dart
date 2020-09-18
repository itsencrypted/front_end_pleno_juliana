import 'package:flutter/material.dart';
import 'package:front_end_pleno_juliana/constants.dart';
import 'package:front_end_pleno_juliana/repos/investment_repo_impl.dart';

class InvestmentScreen extends StatefulWidget {
  static const String id = 'investment_screen';

  @override
  _InvestmentScreenState createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen> {
final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightBlue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 120),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black38,
                    blurRadius: 6.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Column(
                children: <Widget> [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(children: [Text('Seu Resumo', style: kHighlightedText,)
                      , Spacer(),
                      Icon
                      (Icons.menu)]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text('Valor investido', style: TextStyle(color: Colors
                        .black54, fontSize: 15),),
                  ),
                  Text('R\$ 3.200.876,00', style: kHighlightedText,),
                  Column(
                    children: [
                      FutureBuilder<List<Map>>(
                          future: repository.getWealthSummary(),
                          builder: (context, snapshot){
                            if (snapshot.hasError) {
                              return Text('Error loading data');
                            } else if (snapshot.hasData) {
                              final list = snapshot.data;
                              return ListView.builder(
                                itemCount: list.length,
                                  itemBuilder: (context, index) => ListTile(
                                    title: Text(list[index]['id']),
                                  ));
                            } else {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                          }),
                    ],
                  )

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
