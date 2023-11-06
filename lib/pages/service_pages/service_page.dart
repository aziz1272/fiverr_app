import 'package:fiverr_app/pages/intro_pages/intro.dart';
import 'package:flutter/material.dart';

class ServicePage extends StatefulWidget {
  static const String id = "service_page";

  const ServicePage({super.key});

  @override
  State<ServicePage> createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        shadowColor: Colors.black54,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Intro.id);
          },
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                const PopupMenuItem(
                    child: Text(
                  'Refresh',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                )),
                const PopupMenuItem(
                    child: Text(
                  'Copy link',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                )),
                const PopupMenuItem(
                    child: Text(
                  'Open in browser',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                  ),
                )),
              ];
            },
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.only(left: 10, right: 10, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Webpage not available",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 28,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "The webpage at",
              style: TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w400,
                fontSize: 20,
              ),
            ),
            Text(
              "https://www.fiverr.com/terms_of_service? mobile_app_web=true&from_app=true could not be loaded because:",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "net::ERR_INTERNET_DISCONNECTED",
              style: TextStyle(
                color: Colors.black87,
                fontSize: 19,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
