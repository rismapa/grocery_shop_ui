import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:grocery_shop_app_ui/models/order.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(
                24,
              ),
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[100], shape: BoxShape.circle),
                  child: const Icon(
                    Icons.arrow_back_ios_new_rounded,
                    size: 15,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "My Cart",
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 30)),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
              itemCount: orders.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                final order = orders[index];

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[100],
                                shape: BoxShape.circle),
                            child: Image.asset(
                              order.image,
                              height: 50,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                order.title,
                                style: GoogleFonts.poppins(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14)),
                              ),
                              Text(
                                "\$${order.price} - ${order.qty} items",
                                style: GoogleFonts.poppins(
                                  textStyle: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.edit,
                            size: 15,
                            color: Colors.blue[200],
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Edit ",
                            style: GoogleFonts.poppins(
                              textStyle: TextStyle(
                                  fontSize: 12, color: Colors.blue[200]),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 80, vertical: 30),
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Text("Repeat previous order",
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ))),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text("Order Now",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ))),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Container(
                padding: const EdgeInsets.all(20),
                height: 90,
                decoration: BoxDecoration(
                    color: Colors.indigo[300],
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Total Amount",
                            style: GoogleFonts.poppins(
                                textStyle:
                                    const TextStyle(color: Colors.white))),
                        const SizedBox(
                          height: 5,
                        ),
                        Text("\$100.01",
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                            ))),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 25, vertical: 15),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25)),
                        child: Text("Pay Now",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: Colors.indigo[400]))),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
