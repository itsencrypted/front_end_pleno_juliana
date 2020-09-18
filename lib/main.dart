import 'package:flutter/material.dart';
import 'package:front_end_pleno_juliana/screens/investment_screen.dart';
import 'package:front_end_pleno_juliana/screens/welcome_screen.dart';

void main() {
  runApp(FliperTeste());
}

class FliperTeste extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        InvestmentScreen.id: (context) => InvestmentScreen(),
      },
    );
  }
}
