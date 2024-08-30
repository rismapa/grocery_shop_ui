import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class identityProfile extends StatelessWidget {
  const identityProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const Icon(
                Icons.place_outlined,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Bandung, Indonesia",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          Container(
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: NetworkImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9_PxTm0byTV8M1t0CONbRZNPZAbNDDJOHsg&s",
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
