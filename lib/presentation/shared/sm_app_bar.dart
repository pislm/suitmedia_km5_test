import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar smAppBar({
  required String title,
  required BuildContext context,
}) =>
    AppBar(
      leading: IconButton(
        onPressed: () => Navigator.of(context).pop(),
        icon: Image.asset('assets/images/arrow_left.png'),
      ),
      title: Text(
        title,
        style: GoogleFonts.poppins(
          color: const Color(0xFF04021D),
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 0.5,
    );
