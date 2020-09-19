import 'package:flutter/material.dart';
import 'package:front_end_pleno_juliana/models/wealth_summary.dart';
import 'package:front_end_pleno_juliana/repos/investment_repo_impl.dart';

import '../constants.dart';

class BuildTotal extends StatelessWidget {
  final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<WealthSummaryModel>(
      future: repository.getWealthSummary(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
         'Error loading data',
            style: kHighlightedText,
          );
        }
        else if (snapshot.hasData) {
          final model = snapshot.data;
          return ListTile(
                title: Center(
                  child: Text('R\$ ${model.total}',
                    style: kHighlightedText,),
                ),
              );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class BuildCDI extends StatefulWidget {
  @override
  _BuildCDIState createState() => _BuildCDIState();
}

class _BuildCDIState extends State<BuildCDI> {
  final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<WealthSummaryModel>(
        future: repository.getWealthSummary(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Error loading data',
              style: kBlueSmaller,
            );
          }
          else if (snapshot.hasData) {
            final model = snapshot.data;
            return ListTile(
                  title: Center(
                    child: Text('${model.cdi}%',
                      style: kBlueSmaller,),
                  ),
                );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class BuildProfitability extends StatelessWidget {
  final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<WealthSummaryModel>(
        future: repository.getWealthSummary(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Error loading data',
              style: kBlueSmaller,
            );
          }
          else if (snapshot.hasData) {
            final model = snapshot.data;
            return ListTile(
                  title: Center(
                    child: Text('${model.profitability}%',
                      style: kBlueSmaller,),
                  ),
                );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class BuildGain extends StatelessWidget {
  final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder<WealthSummaryModel>(
        future: repository.getWealthSummary(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Error loading data',
              style: kBlueSmaller,
            );
          }
          else if (snapshot.hasData) {
            final model = snapshot.data;
            return ListTile(
                  title: Text('R\$ ${model.gain}',
                    style: kBlueSmaller,),
                );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}



