import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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