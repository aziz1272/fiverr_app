import 'dart:ui';

import 'package:fiverr_app/pages/bottom_nav_bar_pages/pages_at_home/home_page.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/message.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/orders_page.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/notification_page/profile_page.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/search_page.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class BottomNavBar extends StatefulWidget {
  static const String id = "bottom_nav_bar";
  int initialIndex = 0;

  BottomNavBar({
    super.key, required this.initialIndex
  });

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  static int currentIndex = 0;
  PageController _pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pageController = PageController(initialPage: widget.initialIndex);
    if(widget.initialIndex==2) {
      currentIndex=2;
    } else if(widget.initialIndex==1){
      currentIndex=1;
    } else if(widget.initialIndex==3){
      currentIndex = 3;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: const [
              HomePage(),
              Message(),
              SearchPage(),
              OrdersPage(),
              ProfilePage(),
            ],
            onPageChanged: (int Index) {
              setState(() {
                currentIndex = Index;
              });
            },
          )
        ],
      ),
      bottomNavigationBar: navBar(),
    );
  }

  Widget navBar() {
    Size Get = MediaQuery.of(context).size;
    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaY: 10,
          sigmaX: 10,
        ),
        child: Container(
          height: Get.height * 0.07,
          decoration: BoxDecoration(
              color: const Color(0xffffffff),
              border: Border.all(color: Colors.grey, width: 0.3)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _pageController.jumpToPage(0);
                        currentIndex = 0;
                      });
                    },
                    icon: Icon(
                      IconlyBroken.home,
                      color: currentIndex == 0 ? Colors.green : Colors.black,
                      size: currentIndex == 0 ? 35 : 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _pageController.jumpToPage(1);
                        currentIndex = 1;
                      });
                    },
                    icon: Icon(
                      IconlyBroken.message,
                      color: currentIndex == 1 ? Colors.green : Colors.black,
                      size: currentIndex == 1 ? 35 : 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _pageController.jumpToPage(2);
                        currentIndex = 2;
                      });
                    },
                    icon: Icon(
                      IconlyBroken.search,
                      color: currentIndex == 2 ? Colors.green : Colors.black,
                      size: currentIndex == 2 ? 35 : 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _pageController.jumpToPage(3);
                        currentIndex = 3;
                      });
                    },
                    icon: Icon(
                      IconlyBroken.paper,
                      color: currentIndex == 3 ? Colors.green : Colors.black,
                      size: currentIndex == 3 ? 35 : 30,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _pageController.jumpToPage(4);
                        currentIndex = 4;
                      });
                    },
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: currentIndex == 4 ? Colors.green : Colors.black,
                      size: currentIndex == 4 ? 35 : 30,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
