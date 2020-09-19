import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

const kLightBlue = Color(0xFFE8EBF6);

TextStyle kHighlightedText = GoogleFonts.montserrat(
  textStyle: TextStyle(fontSize: 25, color: Colors.indigo,
      fontWeight: FontWeight.bold,)
);

TextStyle kBlueSmaller = GoogleFonts.montserrat(
    textStyle: TextStyle(fontSize: 18, color: Colors.indigo,
      fontWeight: FontWeight.bold,)
);

TextStyle kMyText = GoogleFonts.montserrat(
  textStyle: TextStyle(color: Colors.grey.shade600, fontSize: 15)
);

const HASURA_URL = 'https://harura-fliper-test.herokuapp.com/v1/graphql';
const adminSecret = 'fliperdevtest2020';

final brlFormatter = new NumberFormat.currency(
      name: 'R\$',
      decimalDigits: 2,
      // customPattern: '#,###,###,###.00',
      customPattern: '\u00A4\u00A0#,##0.00',
      locale: "br",
);

final percentageFormatter = new NumberFormat.decimalPercentPattern(
      locale: "br",
      decimalDigits: 3,
);

final cdiFormatter = new NumberFormat.decimalPercentPattern(
      locale: "br",
      decimalDigits: 2,
);