import 'package:flutter/material.dart';
import 'package:front_end_pleno_juliana/screens/investment_screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Stack(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Center(child: Image.asset('assets/images/logo-fliper.png')),
              SizedBox(height: 50,),
              MaterialButton(
                color: Colors.amber,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('INVESTIMENTOS'),
                ),
                  onPressed: () {Navigator.pushReplacementNamed
                (context, InvestmentScreen.id);})
            ],

          )
        ],
      ),
    );
  }
}