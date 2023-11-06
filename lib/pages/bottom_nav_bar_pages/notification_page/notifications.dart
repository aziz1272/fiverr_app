import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/notification_page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NotificationPage extends StatefulWidget {
  static const String id = "notification_page";

  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        title: const Text(
          "Account notificaions",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) => BottomNavBar(initialIndex: 4),
              ),
            );
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Lottie.asset("assets/lotties/data.json",
                width: 200, height: 200),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.085,
              right: size.width * 0.085,
            ),
            child: const Text(
              "Push notifications are currently disabled for your device. Turn on to get updates from Fiverr.",
              textAlign: TextAlign.center,
              style: TextStyle(
                height: 1.6,
                color: Colors.black54,
                fontSize: 17,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.2,
          ),
          Padding(
            padding: EdgeInsets.only(
              left: size.width * 0.03,
              right: size.width * 0.03,
            ),
            child: GestureDetector(
              child: Container(
                height: size.height * 0.05,
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Text(
                    "Notifications",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
