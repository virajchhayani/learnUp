import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:learnup/pages/signin.dart';

class RegisterPage extends StatefulWidget {
  @override
  RegisterPageState createState() => RegisterPageState();
}

class RegisterPageState extends State<RegisterPage> {
  bool _isPasswordVisible = false;
  bool _isRePasswordVisible = false;

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _birthDateController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();

  bool _isEmailValid = true;

  void _createAccount() async {
    final enteredName = _nameController.text;
    final enteredBirthDate = _birthDateController.text;
    final enteredEmail = _emailController.text;
    final enteredPassword = _passwordController.text;
    final enteredRePassword = _rePasswordController.text;
   // Email validation regex pattern
    final emailPattern = r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$';

    // Password validation regex pattern
    final passwordPattern = r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$';

    // Validate your form fields here.
    if (enteredName.isEmpty ||
        enteredBirthDate.isEmpty ||
        enteredEmail.isEmpty ||
        enteredPassword.isEmpty ||
        enteredRePassword.isEmpty) {
      // Show an error message if any field is empty.
      _showErrorDialog("All fields are required.");
      return;
    }

    if (!_isEmailValid) {
      // Show an error message if email is not valid.
      _showErrorDialog("Invalid email address.");
      return;
    }

    if (enteredPassword != enteredRePassword) {
      // Passwords do not match, show an error message.
      _showErrorDialog("Passwords do not match. Please try again.");
      return;
    }
    else{
    await  FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: enteredEmail,
        password: enteredPassword,
      );
    }
    // All validations passed, proceed with creating the account.
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Account Created"),
          content: Text("Account for $enteredName created successfully"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
                // Navigate to the signin.dart page
                // Replace 'SignInPage()' with your actual sign-in page.
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SignInPage()),
                // );
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: Text("OK"),
            ),
          ],
        );
      },
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      final DateTime eightYearsAgo =
          DateTime.now().subtract(Duration(days: 8 * 365));
      if (picked.isBefore(eightYearsAgo)) {
        // Age is under 8 years, not allowed to register
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: Text('Age Restriction'),
              content: Text(
                  'You are under 8 years old and not allowed to register.'),
              actions: <Widget>[
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Text('OK'),
                ),
              ],
            );
          },
        );
      } else {
        setState(() {
          _birthDateController.text = picked.toLocal().toString().split(' ')[0];
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                "Create an Account",
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
                "Kindly establish an account using accurate information.",
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
            // Name Field
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Name",
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
                    controller: _nameController,
                    decoration: InputDecoration(
                      hintText: "Enter your name",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 209, 209, 209),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 2,
                      ),
                    ),
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
            SizedBox(height: 15),
            // Birth Date Field
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Birth Date",
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
                  GestureDetector(
                    onTap: () => _selectDate(context),
                    child: AbsorbPointer(
                      child: TextField(
                        controller: _birthDateController,
                        decoration: InputDecoration(
                          hintText: "Select your birth date",
                          hintStyle: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 209, 209, 209),
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            height: 2,
                          ),
                        ),
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFF2C2C2C),
                          fontFamily: 'Roboto',
                          fontStyle: FontStyle.normal,
                          height: 1.6,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
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
                  ),
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
                    controller: _passwordController,
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
            SizedBox(height: 15),
            // Re-enter Password Field
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Re-enter Password",
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
                    controller: _rePasswordController,
                    decoration: InputDecoration(
                      hintText: "Re-enter your password",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 209, 209, 209),
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 2,
                      ),
                      suffixIcon: IconButton(
                        icon: _isRePasswordVisible
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            _isRePasswordVisible = !_isRePasswordVisible;
                          });
                        },
                      ),
                    ),
                    obscureText: !_isRePasswordVisible,
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

            SizedBox(height: 50),

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
                        onPressed: _createAccount,
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
            SizedBox(height: 0),
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
                          // Navigate to the SignInPage when the "Sign In" button is pressed.
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => SignInPage(),
                          ));
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFB487EE),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                          foregroundColor: Colors.white,
                        ),
                        child: Text("Sign In"),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
