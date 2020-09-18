import 'package:front_end_pleno_juliana/constants.dart';
import 'package:front_end_pleno_juliana/repos/investment_repo.dart';
import 'package:hasura_connect/hasura_connect.dart';

class InvestmentRepoImpl implements InvestmentRepository {
      final _client = HasuraConnect(HASURA_URL,
      headers: {'x-hasura-admin-secret': 'fliperdevtest2020'});

      @override
      Future<List<Map>> getWealthSummary() async {
            final response = await _client.query('''
            query {
                  wealthSummary {
                        id
                        cdi
                        gain
                        profitability
                        total
                  }
            }
            '''
            );
            return (response['data']['wealthSummary'] as List)
                .map((e) => {"total": e['total'], "cdi": e['cdi'], "gain":
            e['gain'], "profitability": e['profitability'], })
                .toList();
      }


      @override
      Stream<List<Map>> streamWealthSummary() {

            return _client.subscription('''
            subscription {
                  wealthSummary {
                        id
                        cdi
                        gain
                        profitability
                        total
                  }
            }
            ''').map((e) => (e['data']['wealthSummary'] as List)
                .map((e) => {"total": e['total']})
                .toList()
            );
      }


}