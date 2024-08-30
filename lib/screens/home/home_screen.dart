import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app_ui/models/category.dart';
import 'package:grocery_shop_app_ui/models/order.dart';
import 'package:grocery_shop_app_ui/screens/home/widgets/bottombar.dart';
import 'package:grocery_shop_app_ui/screens/home/widgets/category_item.dart';
import 'package:grocery_shop_app_ui/screens/home/widgets/identity_profile.dart';
import 'package:grocery_shop_app_ui/screens/home/widgets/order_item.dart';
import 'package:grocery_shop_app_ui/screens/home/widgets/title.dart';
import 'package:grocery_shop_app_ui/screens/home/widgets/welcome_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const identityProfile(),
              const SizedBox(
                height: 20,
              ),
              const WelcomeText(),
              const SizedBox(
                height: 30,
              ),
              const TitleText(
                title: "Categories",
              ),
              const CategoryItem(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const TitleText(
                    title: "My Orders",
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xff323232),
                        size: 20,
                      ))
                ],
              ),
              const OrderItems(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomBarItem(),
    );
  }
}
