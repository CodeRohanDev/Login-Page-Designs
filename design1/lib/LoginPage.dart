// ignore_for_file: prefer_const_constructors, file_names, prefer_const_literals_to_create_immutables, unused_element

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

bool _isObscure = true;

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://img.freepik.com/free-photo/computer-security-with-login-password-padlock_107791-16191.jpg?w=1380&t=st=1700152020~exp=1700152620~hmac=31e061bb13c4190920b209bde35e3507457cbdb2a26b6d5f1c1e195f447998e2",
                      height: 250,
                      scale: 2,
                    ),
                  ],
                ),
                Text(
                  "Welcome!",
                  style: TextStyle(fontFamily: "KdamThmorPro", fontSize: 35),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "to",
                      style:
                          TextStyle(fontFamily: "KdamThmorPro", fontSize: 30),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "CMR.io",
                      style: TextStyle(
                        fontFamily: "KdamThmorPro",
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, right: 30, bottom: 20, left: 30),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          labelText: "Phone Number",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          suffixIcon: Icon(
                            Icons.phone,
                            color: Colors.purple,
                            size: 30, // Adjust the size as needed
                          ), // Add the phone icon here
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextFormField(
                        obscureText:
                            _isObscure, // Set this to true for password fields
                        decoration: InputDecoration(
                          labelText: "Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              // Toggle the password visibility
                              setState(() {
                                _isObscure = !_isObscure;
                              });
                            },
                            child: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              size: 30,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Forgot Password",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        height: 50,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Colors.purple, // Change the text color
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  10), // Adjust the border radius
                            ),
                            elevation: 3, // Adjust the elevation
                          ),
                          child: Text(
                            "Login Now",
                            style: TextStyle(
                              fontSize: 18, // Adjust the font size
                              fontWeight:
                                  FontWeight.bold, // Adjust the font weight
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
                            "Don't have an account? ",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Signup Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.blue),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
