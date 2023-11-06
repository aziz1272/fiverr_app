import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/pages_at_home/home_page.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/message.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/notification_page/notifications.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/orders_page.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/notification_page/profile_page.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/pages_at_home/next_idea.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/search_page.dart';
import 'package:fiverr_app/pages/intro_pages/intro.dart';
import 'package:fiverr_app/pages/service_pages/service_page.dart';
import 'package:fiverr_app/pages/sign_in_page/sign_in.dart';
import 'package:fiverr_app/pages/sign_up_page/sign_up.dart';
import 'package:fiverr_app/pages/splash_pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SplashPage(),
      routes: {
        NextIdea.id:(context)=> const NextIdea(),
        NotificationPage.id:(context)=> const NotificationPage(),
        ServicePage.id:(context)=> const ServicePage(),
        SignUp.id:(context)=> const SignUp(),
        SignIn.id:(context)=> const SignIn(),
        Intro.id:(context)=> const Intro(),
        BottomNavBar.id:(context)=> BottomNavBar(initialIndex: 0,),
        HomePage.id:(context)=> const HomePage(),
        Message.id:(context)=> const Message(),
        SearchPage.id:(context)=> const SearchPage(),
        OrdersPage.id:(context)=> const OrdersPage(),
        ProfilePage.id:(context)=> const ProfilePage(),
      },
    );
  }
}
