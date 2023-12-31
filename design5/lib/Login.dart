// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _validatePassword(String value) {
    if (value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 30, right: 30, top: 60, bottom: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Welcome",
                  style: TextStyle(
                    fontFamily: "KdamThmorPro",
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text(
                  "Enter your details to login.",
                  style: TextStyle(
                    fontFamily: "KdamThmorPro",
                    color: Colors.grey,
                    fontSize: 22,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "User Name",
                      hintStyle: TextStyle(
                        fontFamily: "KdamThmorPro",
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 60,
                  child: TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(
                        fontFamily: "KdamThmorPro",
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: "KdamThmorPro",
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Check if currentState is not null before calling validate
                      if (_formKey.currentState != null &&
                          _formKey.currentState!.validate()) {
                        // Your login logic goes here
                      }
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: "KdamThmorPro",
                        color: Colors.white,
                        fontSize: 22,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "or login with",
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: "KdamThmorPro",
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "Images/facebook.png",
                          height: 40,
                        ),
                        style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Image.asset(
                          "Images/twitter.png",
                          height: 40,
                        ),
                        style: ElevatedButton.styleFrom(shape: CircleBorder()),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account ?",
                      style: TextStyle(
                        fontFamily: "KdamThmorPro",
                        color: Colors.grey,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                          fontFamily: "KdamThmorPro",
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
