import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Good Morning, Mate",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Color(0xff323232),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Let's order fresh\nitems for you",
            style: GoogleFonts.poppins(
                textStyle:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
          )
        ],
      ),
    );
  }
}
