import 'package:fiverr_app/pages/bottom_nav_bar_pages/notification_page/notifications.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

import '../bottom_nav_bar.dart';

class ProfilePage extends StatefulWidget {
  static const String id = "profile_page";

  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                top: size.height*0.04,
                left: size.width*0.03,
                right: size.width*0.03,
              ),
              width: size.width,
              height: size.height*0.21,
              color: Colors.green[600],
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.85,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, NotificationPage.id);
                      },
                      icon: const Icon(
                        IconlyLight.notification,
                        color: Colors.white,
                        size: 27,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 0.01),
                    child: Row(
                      children: [
                        Stack(
                          children: [
                            const CircleAvatar(
                              backgroundImage: AssetImage(
                                "assets/images/person.jpg",
                              ),
                              radius: 30,
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: size.height*0.042),
                                  child: Container(
                                    height: 22,
                                    width: 22,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(25),
                                        color: Colors.white),
                                    child: Center(
                                      child: Icon(
                                        IconlyBold.camera,
                                        color: Colors.grey[700],
                                        size: 17,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding:
                                EdgeInsets.only(top: size.height*0.048, left: 24),
                                  child: Container(
                                    height: 13,
                                    width: 13,
                                    decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(15),
                                      border: Border.all(
                                          color: Colors.white, width: 2),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          width: size.width*0.04,
                        ),
                        const Text(
                          "Azizbekmurotov",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: size.height * 0.72,
              width: size.width,
              child: ListView(
                children: [
                  ListTile(
                    tileColor: Colors.grey[100],
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                      color: Colors.black12,
                      width: 0.2,
                    )),
                    title: const Text(
                      "My Fiverr",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.diamond_outlined,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Get inspired",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        color: Colors.black12,
                        width: 0.2,
                      )
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.favorite_border,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Saved lists",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.list_alt,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "My interests",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.telegram,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Invite friends",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey[100],
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )),
                    title: const Text(
                      "Settings",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      IconlyLight.setting,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Preferences",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.account_circle_outlined,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Invite friends",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey[100],
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )),
                    title: const Text(
                      "Resources",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.support,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Support",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.comment_bank_outlined,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Community and legal",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  const ListTile(
                    leading: Icon(
                      Icons.autofps_select,
                      color: Colors.grey,
                    ),
                    title: Text(
                      "Become a seller",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 15,),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )
                    ),
                  ),
                  ListTile(
                    tileColor: Colors.grey[100],
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.black12,
                          width: 0.2,
                        )),
                    title: const Text(
                      "3.7.9",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 10,
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
