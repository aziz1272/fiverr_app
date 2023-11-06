import 'dart:math';

import 'package:flutter/material.dart';

import 'bottom_nav_bar.dart';

class OrdersPage extends StatefulWidget {
  static const String id = "orders_page";

  const OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 1,
        title: const Text(
          "Manage orders",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
              image: AssetImage("assets/images/list.png"),
              height: 180,
            ),
            const Text(
              "No Orders Yet",
              style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              "Find the right talent for",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 15,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
           // const SizedBox(height: 5,),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(initialIndex: 2),
                    ),
                  );
                },
                child: Text(
                  "Explore the Marketplace",
                  style: TextStyle(
                    color: Colors.greenAccent[700],
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
