import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app_ui/screens/cart/cart_screen.dart';

class BottomBarItem extends StatelessWidget {
  final bool isSelected;

  const BottomBarItem({super.key, this.isSelected = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: const Color(0xff323232).withOpacity(.1),
            width: 1,
          ),
        ),
      ),
      height: 80,
      child: Padding(
        padding: const EdgeInsets.only(left: 27, right: 27, bottom: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.all(5),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.deepPurpleAccent,
                    width: 1,
                  ),
                ),
              ),
              child: Text(
                "Home",
                style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        color: isSelected == true
                            ? Colors.deepPurpleAccent
                            : null)),
              ),
            ),
            IconButton(
                onPressed: () {}, icon: const Icon(Icons.search_rounded)),
            IconButton(onPressed: () {}, icon: const Icon(Icons.dataset)),
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const CartScreen();
                    },
                  ));
                },
                icon: const Icon(Icons.shopping_bag_outlined)),
          ],
        ),
      ),
    );
  }
}
