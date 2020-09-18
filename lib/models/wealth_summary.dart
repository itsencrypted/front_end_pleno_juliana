class Resumo{

  final double total;
  final double profitability;
  final double gain;
  final double cdi;

  Resumo({
    this.total,
    this.profitability,
    this.gain,
    this.cdi
});

  factory Resumo.fromMap(Map<String, dynamic> map) {
    return Resumo(
      total: map['total'],
      profitability: map['profitability'],
      gain: map['gain'],
      cdi: map['cdi'],
    );
  }

}