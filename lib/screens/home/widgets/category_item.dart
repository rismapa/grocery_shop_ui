import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app_ui/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];

          return Padding(
            padding: const EdgeInsets.only(left: 24, top: 10, bottom: 10),
            child: Container(
              width: 150,
              decoration: BoxDecoration(
                  color: category.color,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  Image.asset(
                    category.image,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Text(
                      category.title,
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
