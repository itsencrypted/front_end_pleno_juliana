import 'package:flutter/material.dart';
import 'package:front_end_pleno_juliana/repos/investment_repo_impl.dart';

import '../constants.dart';

class BuildTotal extends StatelessWidget {
  final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Map>>(
      future: repository.getWealthSummary(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
         'Error loading data',
            style: kBlueSmaller,
          );
        }
        else if (snapshot.hasData) {
          final list = snapshot.data;
          return ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) => ListTile(
                title: Center(
                  child: Text('R\$ ${list[index]['total']}',
                    style: kBlueSmaller,),
                ),
              ));
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
    return FutureBuilder<List<Map>>(
      future: repository.getWealthSummary(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Text(
            'Error loading data',
            style: kBlueSmaller,
          );
        }
        else if (snapshot.hasData) {
          final list = snapshot.data;
          return ListView.builder(
              shrinkWrap: true,
              itemCount: list.length,
              itemBuilder: (context, index) => ListTile(
                title: Center(
                  child: Text('${list[index]['cdi']}%',
                    style: kBlueSmaller,),
                ),
              ));
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}

class BuildProfitability extends StatelessWidget {
  final repository = InvestmentRepoImpl();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: FutureBuilder<List<Map>>(
        future: repository.getWealthSummary(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Error loading data',
              style: kBlueSmaller,
            );
          }
          else if (snapshot.hasData) {
            final list = snapshot.data;
            return ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) => ListTile(
                  title: Center(
                    child: Text('${list[index]['profitability']}%',
                      style: kBlueSmaller,),
                  ),
                ));
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
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: FutureBuilder<List<Map>>(
        future: repository.getWealthSummary(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Text(
              'Error loading data',
              style: kBlueSmaller,
            );
          }
          else if (snapshot.hasData) {
            final list = snapshot.data;
            return ListView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                itemBuilder: (context, index) => ListTile(
                  title: Center(
                    child: Text('${list[index]['gain']}',
                      style: kBlueSmaller,),
                  ),
                ));
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



