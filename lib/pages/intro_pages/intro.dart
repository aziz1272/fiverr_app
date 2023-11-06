import 'package:fiverr_app/pages/sign_up_page/sign_up.dart';
import 'package:flutter/material.dart';

import '../service_pages/service_page.dart';
import '../sign_in_page/sign_in.dart';

class Intro extends StatefulWidget {
  static const String id = "intro";

  const Intro({super.key});

  @override
  State<Intro> createState() => _IntroState();
}

class _IntroState extends State<Intro> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            Row(
              children: [
                Container(
                  height: size.height*0.07,
                  width: size.width*0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image2/fv_image.png")),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height*0.015,
            ),
            const Text(
              "Join Fiverr",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25,
              ),
            ),
            SizedBox(
              height: size.height*0.01,
            ),
            Padding(
              padding: EdgeInsets.only(right: size.width*0.03),
              child: const Text(
                "join our growing freelance community to offer"
                " your professional services, connect with customers,"
                " and get paid on Fiverr's trusted platform.",
                style: TextStyle(
                  height: 1.5,
                  color: Colors.black87,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.04,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: size.height*0.055,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.facebook,
                      color: Colors.blue,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue With Facebook",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.025,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                height: size.height*0.055,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.g_mobiledata,
                      color: Colors.red,
                      size: 40,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Continue With Google",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height*0.025,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushReplacementNamed(context, SignUp.id);
              },
              child: Container(
                height: size.height*0.055,
                width: size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.black12,
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline,
                      color: Colors.black,
                      size: 30,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Sign Up With Email",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By joining, you agree to Fiverr's",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: size.width*0.06,),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, ServicePage.id);
                    },
                    child: const Text(
                      "Terms of Service",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.green,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height*0.18,
            ),
            Row(
              children: [
                TextButton(
                   onPressed: (){
                     Navigator.pushReplacementNamed(context, SignIn.id);
                   },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.greenAccent[700],
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
