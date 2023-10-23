import 'package:flutter/material.dart';
import 'package:learnup/pages/signin.dart';

class PasswordResetPage extends StatefulWidget {
  @override
  _PasswordResetPageState createState() => _PasswordResetPageState();
}

class _PasswordResetPageState extends State<PasswordResetPage> {
  final TextEditingController _emailController = TextEditingController();
  bool _isEmailValid = true;
  final PageController _pageController = PageController();
  int _currentPageIndex = 0;

  void _resetPassword() {
    final enteredEmail = _emailController.text;
    final isValidEmail = enteredEmail.isNotEmpty && enteredEmail.contains('@');

    if (isValidEmail) {
      // Perform the password reset logic here (e.g., send a reset email)
      // You can add your implementation here
      // Once the email is sent, you can show a success message or navigate the user.
      // For now, we'll just show a simple dialog.

      _pageController.nextPage(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Password Reset"),
            content: Text("Password reset email sent to $enteredEmail"),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          );
        },
      );
    } else {
      // If the email is not valid, update the state to show an error.
      setState(() {
        _isEmailValid = false;
      });
    }
  }

  void _navigateToSignInPage() {
    // Navigate to the Sign In page.
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Password Reset",
          style: TextStyle(
            color: Color(0xFFB487EE),
          ),
        ),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Color(0xFFB487EE),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          setState(() {
            _currentPageIndex = index;
          });
        },
        children: [
          buildResetPasswordPage(),
          buildSuccessPage(),
        ],
      ),
    );
  }

  Widget buildResetPasswordPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Password Reset Page",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB487EE),
            ),
          ),
          SizedBox(height: 20),
          // Add your password reset form here
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                errorText: _isEmailValid ? null : "Invalid email",
                labelStyle: TextStyle(
                  color: Color(0xFFB487EE), // Set label text color
                ),
              ),
              onChanged: (text) {
                // Check the email format when the user types
                bool isValid = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                    .hasMatch(text);
                setState(() {
                  _isEmailValid = isValid;
                });
              },
              // ...
            ),
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _resetPassword,
            child: Text(
              "Reset Password",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFB487EE),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildSuccessPage() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Password Reset Successful",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color(0xFFB487EE),
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Password reset email sent to your email address.",
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: _navigateToSignInPage,
            child: Text(
              "Sign In",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFFB487EE),
            ),
          ),
        ],
      ),
    );
  }
}
