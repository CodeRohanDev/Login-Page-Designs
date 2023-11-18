// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 50),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Welcome back! ",
                    style: TextStyle(
                        fontFamily: "KdamThmorPro",
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Text(
                "Login to access your account",
                style: TextStyle(
                  letterSpacing: 1,
                  fontFamily: "KdamThmorPro",
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 170, 170, 170),
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5),
                child: Text(
                  "Email",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 12,
                    fontFamily: "KdamThmorPro",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Email",
                  hintStyle: TextStyle(
                    letterSpacing: 1,
                    fontFamily: "KdamThmorPro",
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, bottom: 5),
                child: Text(
                  "Password",
                  style: TextStyle(
                    letterSpacing: 2,
                    fontSize: 12,
                    fontFamily: "KdamThmorPro",
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter Password",
                  hintStyle:
                      TextStyle(fontFamily: "KdamThmorPro", letterSpacing: 1),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password",
                      style: TextStyle(
                        letterSpacing: 1,
                        fontFamily: "KdamThmorPro",
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Let's go!",
                    style: TextStyle(
                        letterSpacing: 1,
                        fontWeight: FontWeight.bold,
                        fontFamily: "KdamThmorPro",
                        fontSize: 20,
                        color: Colors.white),
                  ),
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Create Account",
                    style: TextStyle(fontFamily: "KdamThmorPro", fontSize: 12),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "SignUp",
                      style: TextStyle(
                        fontFamily: "KdamThmorPro",
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
