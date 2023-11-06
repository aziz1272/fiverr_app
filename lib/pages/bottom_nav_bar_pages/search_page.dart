import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  static const String id = "search_page";

  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {

  @override
  Widget build(BuildContext context) {
    Size gets = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Categories",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            dividerColor: Colors.white,
            indicatorColor: Colors.greenAccent[700],
            tabs: [
              Tab(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    color: Colors.greenAccent[700],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Tab(
                child: Text(
                  "Interests",
                  style: TextStyle(
                    color: Colors.greenAccent[700],
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView(
              children: [
                container1(
                  "assets/images/design.png",
                  "Graphics & Design",
                  "Logo & Brand identity, Gaming",
                ),
                container1(
                  "assets/images/monitor.png",
                  "Digital Marketing",
                  "Social Media Marketing, Search Engine Optimizator (SEO)",
                ),
                container1(
                  "assets/images/writing.png",
                  "Writing & Translation",
                  "Articles & Blog Posts, Translation",
                ),
                container1(
                  "assets/images/video.png",
                  "Video & Animation",
                  "Video Editing, Video Ads & Commercials",
                ),
                container1(
                  "assets/images/nota.png",
                  "Music & Audio",
                  "Producers & Composers, Mixing & Mastering",
                ),
                container1(
                  "assets/images/tech.png",
                  "Programming & Tech",
                  "Website Development, Website Maintenance",
                ),
                container1(
                  "assets/images/data.png",
                  "Data",
                  "Databases, Data Processing",
                ),
                container1(
                  "assets/images/business.png",
                  "Business",
                  "Virtual Assistant, E-Commerce Management",
                ),
                container1(
                  "assets/images/chashka.png",
                  "Lifestyle",
                  "Self Improvement, Wellness & Fitness",
                ),
                container1(
                  "assets/images/foto.png",
                  "Photography",
                  "Product Photographers, Portrait Photographers",
                ),
                container1(
                  "assets/images/services.png",
                  "Al Services",
                  "Build your Al app, Get your data right",
                ),
              ],
            ),
            ListView(
              children: [
                SizedBox(height: gets.height*0.03,),
                Padding(
                  padding: EdgeInsets.only(
                    left: gets.width*0.05,
                  ),
                  child: const Text(
                    "Your interests",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 19,
                    ),
                  ),
                ),
                SizedBox(height: gets.height*0.02,),
                Padding(
                  padding: EdgeInsets.only(
                    left: gets.width*0.05,
                  ),
                  child: const Text(
                    "Choose your interests for a better discovery experience.",
                    style: TextStyle(
                      fontSize: 15,
                      overflow: TextOverflow.ellipsis,
                    ),
                    maxLines: 2,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.all(15),
                    height: gets.height*0.054,
                    width: gets.width,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[700],
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: const Center(
                      child: Text(
                        "Choose Interests",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: gets.height*0.02,),
                Padding(
                  padding: EdgeInsets.only(left: gets.width*0.05,bottom: gets.height*0.005,),
                  child: const Text(
                    "You may also like",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 19,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                container1(
                  "assets/images/foto.png",
                  "Photography",
                  "Product Photographers, Portrait Photographers",
                ),
                container1(
                  "assets/images/services.png",
                  "Al Services",
                  "Build your Al app, Get your data right",
                ),
                container1(
                  "assets/images/design.png",
                  "Graphics & Design",
                  "Logo & Brand identity, Gaming",
                ),
                container1(
                  "assets/images/monitor.png",
                  "Digital Marketing",
                  "Social Media Marketing, Search Engine Optimizator (SEO)",
                ),
                container1(
                  "assets/images/writing.png",
                  "Writing & Translation",
                  "Articles & Blog Posts, Translation",
                ),
                container1(
                  "assets/images/video.png",
                  "Video & Animation",
                  "Video Editing, Video Ads & Commercials",
                ),
                container1(
                  "assets/images/nota.png",
                  "Music & Audio",
                  "Producers & Composers, Mixing & Mastering",
                ),
                container1(
                  "assets/images/tech.png",
                  "Programming & Tech",
                  "Website Development, Website Maintenance",
                ),
                container1(
                  "assets/images/data.png",
                  "Data",
                  "Databases, Data Processing",
                ),
                container1(
                  "assets/images/business.png",
                  "Business",
                  "Virtual Assistant, E-Commerce Management",
                ),
                container1(
                  "assets/images/chashka.png",
                  "Lifestyle",
                  "Self Improvement, Wellness & Fitness",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget container1(String image, String title, String content) {
    Size size = MediaQuery.of(context).size;
    return ListTile(
      tileColor: Colors.white,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          width: 0.5,
          color: Colors.black12,
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 20,
        ),
      ),
      subtitle: Text(
        content,
        style: const TextStyle(
          color: Colors.grey,
          fontWeight: FontWeight.w400,
          fontSize: 15,
        ),
      ),
      leading: Container(
        height: size.height*0.05,
        width: size.width*0.1,
        decoration: BoxDecoration(
            image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        )),
      ),
    );
  }
}
