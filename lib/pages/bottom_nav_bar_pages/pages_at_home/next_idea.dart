import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class NextIdea extends StatefulWidget {
  static const String id = "next_idea";

  const NextIdea({super.key});

  @override
  State<NextIdea> createState() => _NextIdeaState();
}

class _NextIdeaState extends State<NextIdea> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, BottomNavBar.id);
              },
              icon: Icon(Icons.arrow_back),
            ),
            backgroundColor: Colors.orangeAccent.withOpacity(0.2),
            expandedHeight: 580,
            elevation: 50,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  const Text(
                    "Spark your\n next idea",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                      color: Colors.black,
                      height: 1.4,
                    ),
                  ),
                  const Text(
                    "Explore beautiful work,\n made on Fiverr, picked for you.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.only(right: 10),
                    height: 130,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        list1("assets/images/gradient.jpg", "All"),
                        list1("assets/images/nota.png", "Top Trending"),
                        list1("assets/images/artist2.jpg", "For you"),
                        list1("assets/images/dog.jpg", "Cartoons & Comics"),
                        list1("assets/images/logo3.jpg", "Logo Design"),
                        list1("assets/images/logo4.png", "Illustration"),
                        list1("assets/images/monitor.png", "Book Design"),
                        list1("assets/images/list.png", "Flayer Design"),
                        list1("assets/images/logo2.png", "logo Animation"),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(left: 10, right: 10, bottom: 20),
              width: double.infinity,
              height: 700,
              child: GridView.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: [
                  Container(
                    height: 100,
                      width: 100,
                      child: const Image(
                    image: AssetImage("assets/images/bayou.jpg"),
                    fit: BoxFit.cover,
                  )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                    image: AssetImage("assets/images/images.jpg"),
                    fit: BoxFit.cover,
                  )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                    image: AssetImage("assets/images/images (1).jpg"),
                    fit: BoxFit.cover,
                  )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                    image: AssetImage("assets/images/images (3).jpg"),
                    fit: BoxFit.cover,
                  )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                        image: AssetImage("assets/images/logo1.png"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                        image: AssetImage("assets/images/logo2.png"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                        image: AssetImage("assets/images/logo3.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                        image: AssetImage("assets/images/logo4.png"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                        image: AssetImage("assets/images/logo5.jpg"),
                        fit: BoxFit.cover,
                      )),
                  Container(
                      height: 100,
                      width: 100,
                      child: const Image(
                        image: AssetImage("assets/images/web1.jpg"),
                        fit: BoxFit.cover,
                      )),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget list1(String image, String name) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 110,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.2),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w400,
                fontSize: 13,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
