import 'package:flutter/material.dart';
import 'package:learnup/widgets.dart'; // Import your BackButtonWidget and other widgets as needed
import 'package:learnup/pages/home.dart'; // Import your home.dart file here

class JoinCommunityPage extends StatefulWidget {
  @override
  _JoinCommunityPageState createState() => _JoinCommunityPageState();
}

class _JoinCommunityPageState extends State<JoinCommunityPage> {
  TextEditingController _communityNameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      color: Color(0xFFB487EE),
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: BackButtonWidget(
                      onPressed: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => MyHomePage(),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Join Community",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
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
            SearchPage1(),
            SizedBox(height: 15),
            // Community Name Field
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Community Name",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF618DEF), // Set the color here
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      height: 2,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _communityNameController,
                    decoration: InputDecoration(
                      hintText: "Name of the community",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFD1D1D1), // Change the color here
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 2,
                      ),
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
                    "Community Code",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF618DEF), // Set the color here
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      height: 2,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordController,
                    decoration: InputDecoration(
                      hintText: "Enter your Community code",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFD1D1D1), // Change the color here
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
            // Join Community Button with Text Inside
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    // Handle button tap here
                  },
                  child: Container(
                    width: 147,
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF618DEF), // Set the color here
                    ),
                    child: Center(
                      child: Text(
                        "Join Community",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF2F2F2), // Set the color here
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Center(
                child: Text(
                  "OR",
                  style: TextStyle(
                    color: Colors.black, // Text color
                    fontFamily: 'Roboto', // Font family
                    fontSize: 14,
                    fontWeight: FontWeight.w400, // Font weight
                    fontStyle: FontStyle.normal, // Font style
                    letterSpacing: 2.1, // Letter spacing
                  ),
                ),
              ),
            ),
            // Community Link Field
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Community Link",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF618DEF), // Set the color here
                      fontFamily: 'Roboto',
                      fontStyle: FontStyle.normal,
                      height: 2,
                    ),
                  ),
                  SizedBox(height: 8),
                  TextFormField(
                    controller: _communityNameController,
                    decoration: InputDecoration(
                      hintText: "Paste your community link here",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFD1D1D1), // Change the color here
                        fontFamily: 'Roboto',
                        fontStyle: FontStyle.normal,
                        height: 2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            // Join Community Button with Text Inside (for the community link)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: GestureDetector(
                  onTap: () {
                    // Handle button tap here
                  },
                  child: Container(
                    width: 147,
                    height: 23,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xFF618DEF), // Set the color here
                    ),
                    child: Center(
                      child: Text(
                        "Join Community",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFF2F2F2), // Set the color here
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // Terms and Conditions Text
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Center(
                child: Text(
                  "Terms and Conditions *",
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Colors.black, // Text color
                    fontFamily: 'Inknut Antiqua',
                    letterSpacing: 2.1, // Letter spacing
                  ),
                ),
              ),
            ),
            // Terms and Conditions Details
            Container(
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Protect your personal information and the personal information of others.",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Text color
                      fontFamily: 'Inknut Antiqua',
                      letterSpacing: 2.1, // Letter spacing
                    ),
                  ),
                  Text(
                    "Do not share or distribute private information without consent.",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Text color
                      fontFamily: 'Inknut Antiqua',
                      letterSpacing: 2.1, // Letter spacing
                    ),
                  ),
                  Text(
                    "You may only share PDFs and documents related to academic purposes.",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Text color
                      fontFamily: 'Inknut Antiqua',
                      letterSpacing: 2.1, // Letter spacing
                    ),
                  ),
                  Text(
                    "Do not upload copyrighted material without permission.",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Text color
                      fontFamily: 'Inknut Antiqua',
                      letterSpacing: 2.1, // Letter spacing
                    ),
                  ),
                  Text(
                    "Follow our Privacy Policy for further details on data handling.",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Text color
                      fontFamily: 'Inknut Antiqua',
                      letterSpacing: 2.1, // Letter spacing
                    ),
                  ),
                  Text(
                    "If you have any questions or concerns, please contact us at learnup.contact@gmail.com.",
                    style: TextStyle(
                      fontSize: 8,
                      fontWeight: FontWeight.w400,
                      color: Colors.black, // Text color
                      fontFamily: 'Inknut Antiqua',
                      letterSpacing: 2.1, // Letter spacing
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
