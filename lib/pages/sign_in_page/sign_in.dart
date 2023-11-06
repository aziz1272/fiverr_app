import 'package:fiverr_app/pages/bottom_nav_bar_pages/bottom_nav_bar.dart';
import 'package:fiverr_app/pages/intro_pages/intro.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  static const String id = "sign_in";

  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _obscureText = true;

  String a = "";
  String b = "";

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Intro.id);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: ListView(
            clipBehavior: Clip.hardEdge,
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              Padding(
                padding: EdgeInsets.only(right: size.width * 0.76),
                child: Container(
                  height: size.height*0.07,
                  width: size.width*0.18,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/image2/fv_image.png")),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Text(
                "Welcome back",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              const Text(
                "Sign in to Fiverr to pick up exactly where you left off.",
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: size.height*0.05,
                      width: size.width * 0.44,
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
                            "Facebook",
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
                    width: size.width*0.01,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: size.height*0.05,
                      width: size.width * 0.44,
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
                            "Google",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 17,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "or sign in with email",
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFormField(
                onChanged: (val){
                  b = val;
                },
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  isDense: true,
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey)),
                  // hintText: 'Email or username',
                  labelText: 'Email or username',
                  labelStyle: TextStyle(color: Colors.black54),
                ),
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Iltimos emailingizni qaytadan kiritib ko'ring";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: size.height * 0.05,
              ),
              TextFormField(
                onChanged: (val){
                  a = val;
                },
                obscureText: _obscureText,
                controller: passwordController,
                obscuringCharacter: '*',
                autocorrect: !_obscureText,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                      color: Colors.black87,
                    ),
                    onPressed: _toggle,
                  ),
                  isDense: true,
                  border: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  disabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey)),
                  errorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  focusedErrorBorder: const OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.black)),
                  labelText: 'Password',
                  labelStyle: const TextStyle(color: Colors.black54),
                ),
                validator: (String? value) {
                  if (value!.length <= 6) {
                    return "Parolni 6 tadan ortiq harf va sonlarni qatnashtirib yozing";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, BottomNavBar.id);
                  }
                },
                child: Container(
                  height:size.height*0.06,
                  width:size.width,
                  decoration: BoxDecoration(
                    color: a=="" && b=="" ?Colors.green.withOpacity(0.5):Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    clipBehavior: Clip.none,
                      autofocus: false,
                      onPressed: () {},
                      child: const Text(
                        "Forgot Password",
                        style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.w500,
                          fontSize: 17,
                        ),
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
