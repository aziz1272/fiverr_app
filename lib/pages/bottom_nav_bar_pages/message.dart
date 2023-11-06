import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Message extends StatefulWidget {
  static const String id = "message";

  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          "Inbox",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(Icons.swap_horizontal_circle_sharp))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset("assets/lotties/data.json"),
          const Text(
            "No messages yet",
            style: TextStyle(
              overflow: TextOverflow.ellipsis,
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
            maxLines: 1,
          ),
          Text(
            "Send your first message. You'll find your conversations all right here.",
            maxLines: 2,
            style: TextStyle(
              color: Colors.grey[700],
              fontWeight: FontWeight.w400,
              fontSize: 17,
              overflow: TextOverflow.ellipsis,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => BottomNavBar(initialIndex: 2),
                ),
              );
            },
            child: const Text(
              "Explore Gigs",
              style: TextStyle(
                color: Colors.green,
                fontSize: 19,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
