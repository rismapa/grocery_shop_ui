import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app_ui/screens/home/home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(
              "assets/images/welcome_1.png",
              height: size.height * .5,
              width: size.width * .85,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "We deliver\ngrocery at your\ndoorstep",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xff323232),
            )),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Groceer gives you fresh vegetables and fruits,\nOrder fresh item from groceer.",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(textStyle: TextStyle()),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => const HomeScreen(),
              ));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
              decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                  textStyle: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
