import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/pages_at_home/next_idea.dart';
import 'package:fiverr_app/pages/bottom_nav_bar_pages/strings/container2_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool like = true;

  void _toggle() {
    setState(() {
      like = !like;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.5,
        shadowColor: Colors.grey,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "fiverr",
              style: TextStyle(
                  color: Colors.green[900],
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
            Text(
              ".",
              style: TextStyle(
                  color: Colors.greenAccent[700],
                  fontWeight: FontWeight.bold,
                  fontSize: 35),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.diamond_outlined))
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: size.width*0.03),
        height: double.infinity,
        width: double.infinity,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(top: size.height*0.02, right: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => BottomNavBar(initialIndex: 2),
                    ),
                  );
                },
                child: Container(
                  height: 48,
                  width: size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, width: 1),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 8,
                      ),
                      Icon(
                        Icons.search,
                        color: Colors.grey[700],
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Search services",
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height*0.04,),
            Padding(
              padding: EdgeInsets.only(right: size.width*0.01,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Popular Services",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.greenAccent[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            Container(
              height: 190,
              width: size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  container1("assets/images/logo1.png", "Logo Design"),
                  container1("assets/images/artist1.jpg", "Al Artists"),
                  container1("assets/images/adobe-after-effects-logo-animation-software-interface.png", "Logo Animation",),
                  container1("assets/images/web2.jpg", "Business Cards & Stationery",),
                  container1("assets/images/artist3.jpg","Web Traffic",),
                  container1("assets/images/web1.jpg", "Explore Traffic",),
                  container1("assets/images/logo2.png", "Web Traffic",),
                  container1("assets/images/gradient.jpg", "Gradient Traffic",),
                  container1("assets/images/web1.jpg", "Explore Traffic",),
                  container1("assets/images/logo1.png", "Logo Design"),
                  container1("assets/images/web2.jpg", "Business Cards & Stationery",),
                ],
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, NextIdea.id);
              },
              child: Padding(
                padding: EdgeInsets.only(
                  right: size.width*0.03,
                ),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  width: size.width,
                  height: 300,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/logo5.jpg"))),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        textHeightBehavior: TextHeightBehavior(),
                        "Explore beautiful work, picked for you.",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 28),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: size.height*0.05,),
            Padding(
              padding: EdgeInsets.only(right: size.width*0.01,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Recently viewed & more",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.greenAccent[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: size.width,
              height: 290,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  container2(
                      Strings2.image1,
                      Strings2.title1,
                      Strings2.content1,
                      Strings2.text1,
                      Strings2.star1,
                      Strings2.son1,
                      Strings2.price1),
                  container2(
                      Strings2.image2,
                      Strings2.title2,
                      Strings2.content2,
                      Strings2.text2,
                      Strings2.star2,
                      Strings2.son2,
                      Strings2.price2),
                  container2(
                      Strings2.image3,
                      Strings2.title3,
                      Strings2.content3,
                      Strings2.text3,
                      Strings2.star3,
                      Strings2.son3,
                      Strings2.price3),
                  container2(
                      Strings2.image4,
                      Strings2.title4,
                      Strings2.content4,
                      Strings2.text4,
                      Strings2.star4,
                      Strings2.son4,
                      Strings2.price4),
                  container2(
                      Strings2.image5,
                      Strings2.title5,
                      Strings2.content5,
                      Strings2.text5,
                      Strings2.star5,
                      Strings2.son5,
                      Strings2.price5),
                  container2(
                      Strings2.image6,
                      Strings2.title6,
                      Strings2.content6,
                      Strings2.text6,
                      Strings2.star6,
                      Strings2.son6,
                      Strings2.price6),
                  container2(
                      Strings2.image7,
                      Strings2.title7,
                      Strings2.content7,
                      Strings2.text7,
                      Strings2.star7,
                      Strings2.son7,
                      Strings2.price7),
                  container2(
                      Strings2.image8,
                      Strings2.title8,
                      Strings2.content8,
                      Strings2.text8,
                      Strings2.star8,
                      Strings2.son8,
                      Strings2.price8),
                ],
              ),
            ),
            SizedBox(height: size.height*0.05,),
            Padding(
              padding: EdgeInsets.only(left: size.width*0.01),
              child: const Text(
                "What's new on Fiverr?",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(height: size.height*0.03,),
            SizedBox(
              height: 180,
              width: size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  container3(
                      "assets/images/dog.jpg", "Eye-catching Al designs"),
                  container3("assets/images/prosper.jpg",
                      "Recession-ready your business"),
                  container3("assets/images/gradient.jpg", "#proudonfiverr"),
                ],
              ),
            ),
            const SizedBox(height: 50),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  height: 140,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent[700],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Invite friends & get up to \$100",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            overflow: TextOverflow.ellipsis),
                        maxLines: 1,
                      ),
                      SizedBox(
                        height: size.height*0.005,
                      ),
                      const Text(
                        "Introduce your friends to the fastest way to get things done.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Row(
                        children: [
                          Text(
                            "Invite Friends",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward,
                            size: 17,
                            color: Colors.white,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 50),
            const Text(
              "Inspired by your browsing history",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
            SizedBox(height: size.height*0.03,),
            SizedBox(
              height: 260,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  container4("assets/images/bayou2.jpg", "5.0", "1.1K", "55"),
                  container4("assets/images/bayou.jpg", "4.9", "2K", "60"),
                  container4(
                      "assets/images/images (1).jpg", "4.8", "11.1K", "10"),
                  container4("assets/images/logo2.png", "5.0", "1.2K", "25"),
                  container4("assets/images/logo1.png", "4.9", "714", "55"),
                  container4("assets/images/logo4.png", "4.9", "43", "30"),
                  container4(
                      "assets/images/adobe-after-effects-logo-animation-software-interface.png",
                      "4.9",
                      "15.2K",
                      "45"),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget container1(String image, String title) {
    Size gets = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: gets.width*0.02),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey, width: 1)),
      width: 156,
      child: ListView(
        children: [
          Container(
            height: 110,
            width: 156,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10)),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          ),

          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w600,
                      overflow: TextOverflow.ellipsis),
                  maxLines: 2,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget container2(
    String image,
    String title,
    String content,
    String _text,
    String star,
    String son,
    String price,
  ) {
    Size gets = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(right: 10, top: 10),
      width: 275,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 135,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          image: const DecorationImage(
                            image: AssetImage("assets/images/rasm1.png"),
                          )),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 13,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 1,
                        ),
                        Text(
                          content,
                          maxLines: 1,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                IconButton(onPressed: _toggle, icon: Icon(
                   like ? IconlyLight.heart: IconlyBold.heart,
                  color: like? Colors.black54: Colors.red,
                ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Text(
              _text,
              maxLines: 2,
              style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 15,
                  overflow: TextOverflow.ellipsis),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      IconlyBold.star,
                      color: Colors.orangeAccent,
                      size: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      star,
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "($son)",
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "From",
                      style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "\$$price",
                      style: const TextStyle(
                        overflow: TextOverflow.ellipsis,
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.w600,
                      ),
                      maxLines: 1,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget container3(String image, String title) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 300,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        padding: const EdgeInsets.only(left: 10, top: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black.withOpacity(0.5),
        ),
        child: Text(
          title,
          style: const TextStyle(
            overflow: TextOverflow.ellipsis,
            color: Colors.white,
            fontSize: 23,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 4,
        ),
      ),
    );
  }

  Widget container4(String image, String star, String follow, String price) {
    Size gets = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 115,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(image),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: gets.width*0.02,right: gets.width*0.02,),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.orangeAccent,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      star,
                      style: const TextStyle(
                        color: Colors.orangeAccent,
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      "($follow)",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                IconButton(onPressed: _toggle, icon: Icon(
                  like? IconlyLight.heart: IconlyBold.heart,
                  color: like? Colors.grey: Colors.red,
                ),),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "Design awesome",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              "vintage logo",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 10, right: 20),
            child: Text(
              "with hand drawn inventage",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  overflow: TextOverflow.ellipsis),
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text("From",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "\$$price",
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 17,
                    overflow: TextOverflow.ellipsis,
                  ),
                  maxLines: 1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
