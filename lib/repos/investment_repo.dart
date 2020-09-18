abstract class InvestmentRepository {
  Future getWealthSummary();
  Stream streamWealthSummary();
}