import 'package:fiverr_app/pages/intro_pages/intro.dart';
import 'package:fiverr_app/pages/service_pages/service_page.dart';
import 'package:flutter/material.dart';

import '../bottom_nav_bar_pages/bottom_nav_bar.dart';

class SignUp extends StatefulWidget {
  static const String id = "sign_up";

  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();

  bool _obscureText = true;
  String? _password;

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
        elevation: 1,
        shadowColor: Colors.grey,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, Intro.id);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: const Text(
          "Sign Up With Email",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: ListView(
            children: [
              SizedBox(
                height: size.height * 0.1,
              ),
              TextFormField(
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
                  labelStyle: TextStyle(
                    color: Colors.black54,
                    fontSize: 17,
                  ),
                ),
                onSaved: (String? value) {},
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
                controller: usernameController,
                keyboardType: TextInputType.streetAddress,
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
                  labelText: 'Public username',
                  labelStyle: TextStyle(color: Colors.black54, fontSize: 17),
                ),
                onSaved: (String? value) {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Ismingizni kiriting";
                  }
                  return null;
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 0.05,
                  top: size.height*0.01,
                  right: size.width * 0.05,
                ),
                child: const Text(
                  "Your username will be public and you will not be able to change it.",
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              TextFormField(
                onSaved: (val) {
                  _password = val;
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
                      color: Colors.black87
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
                height: size.height * 0.05,
              ),
              GestureDetector(
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.pushReplacementNamed(context, BottomNavBar.id);
                  }
                },
                child: Container(
                  height: size.height*0.06,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
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
            ],
          ),
        ),
      ),
    );
  }
}
