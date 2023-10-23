import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'PasswordResetPage.dart';
import 'Register.dart'; // Import the RegisterPage
import 'home.dart'; // Import the home.dart file
import 'package:learnup/pages/signin.dart';

class SignInPage extends StatefulWidget {
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isEmailValid = true; // Define and initialize _isEmailValid

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Sign In",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  width: 50,
                  height: 4.0,
                  color: Color(0xFFB487EE),
                  margin: EdgeInsets.only(top: 0.0),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  "Kindly log in using the email and password associated with your account.",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 161, 161, 161),
                    fontFamily: 'Roboto',
                    fontStyle: FontStyle.normal,
                    height: 1.6,
                  ),
                ),
              ),
              SizedBox(height: 30),
              // Email Field
              // Email Field
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 2,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextField(
                      controller: _emailController,
                      onChanged: (text) {
                        // Check the email format when the user types
                        bool isValid =
                            RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                                .hasMatch(text);
                        setState(() {
                          _isEmailValid = isValid;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: "Enter your email",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 209, 209, 209),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal,
                          height: 2,
                        ),
                        errorText: _isEmailValid ? null : "Invalid email",
                      ),
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2C2C2C),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 1.6,
                      ),
                    )
                  ],
                ),
              ),

              SizedBox(height: 15),
              // Password Field
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 161, 161, 161),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 2,
                      ),
                    ),
                    SizedBox(height: 8),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter your password",
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 209, 209, 209),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal,
                          height: 2,
                        ),
                        suffixIcon: IconButton(
                          icon: _isPasswordVisible
                              ? Icon(Icons.visibility_off)
                              : Icon(Icons.visibility),
                          onPressed: () {
                            setState(() {
                              _isPasswordVisible = !_isPasswordVisible;
                            });
                          },
                        ),
                      ),
                      obscureText: !_isPasswordVisible,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF2C2C2C),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PasswordResetPage(),
                      ),
                    );
                  },
                  child: Text(
                    "Forgot password?",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFB487EE),
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      height: 1.6,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 300),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 346.776,
                        height: 46.519,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: ElevatedButton(
                          onPressed: () async {
                            if (_formKey.currentState!.validate()) {
                              // Add your sign-in logic here
                              // Successful sign-in
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ),
                              );
                            } else {
                              // Invalid input, show an error dialog
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return AlertDialog(
                                    title: Text("Sign-In Failed"),
                                    content: Text("Invalid email or password."),
                                    actions: <Widget>[
                                      TextButton(
                                        onPressed: () async {
                                          try{
                                        await  FirebaseAuth.instance.signInWithEmailAndPassword(email: _emailController.text, password: _passwordController.text).then((value){

                                          Navigator.of(context).pop();
                                        });} on FirebaseAuthException catch(e){
                                          log(e.code);
                                        }
                                        },
                                        child: Text("OK"),
                                      ),
                                    ],
                                  );
                                },
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xFFB487EE),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            foregroundColor: Colors.white,
                          ),
                          child: Text("Sign in"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "or",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFC4C4C4),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Color(0xFFE5E5E5),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Stack(
                    children: [
                      Container(
                        width: 346.776,
                        height: 46.519,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to the RegisterPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterPage(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            onPrimary: Color(0xFFB487EE),
                            textStyle: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            side: BorderSide(
                              color: Color(0xFFB487EE),
                              width: 1.0,
                            ),
                          ),
                          child: Text("Register"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
