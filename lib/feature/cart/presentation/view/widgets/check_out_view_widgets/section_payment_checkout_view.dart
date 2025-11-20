import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SectionPaymentMethod extends StatelessWidget {
  const SectionPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Payment methods',
          style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ],
    );
  }
}
