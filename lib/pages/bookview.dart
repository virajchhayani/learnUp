import 'package:flutter/material.dart';
import 'package:learnup/pages/home.dart';
import 'package:learnup/widgets.dart';

class BookViewPage extends StatelessWidget {
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
                    "Books",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins",
                      color: Color(0xFF2C2C2C),
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

            // New text elements
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFB487EE), // Underline color
                      width: 2.0, // Underline thickness
                    ),
                  ),
                ),
                child: Text(
                  "User Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                    color: Color(0xFF2C2C2C),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0,
                          5.0), // Adjust top and bottom padding
                      child: Text(
                        "Viraj Chhayani",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Inknut Antiqua",
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0,
                          5.0), // Adjust top and bottom padding
                      child: Text(
                        "Rk University - Rajkot",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          fontFamily: "Inknut Antiqua",
                          color: Color(0xFF6A6A6A),
                        ),
                      ),
                    ),
                    PremiumUserBadge(), // Added PremiumUserBadge widget
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 50.0),
                  child: Image.asset(
                    'assets/bookicon.png',
                    width: 100.0, // Adjust the width as needed
                    height: 100.0, // Adjust the height as needed
                  ),
                ),
              ],
            ),

            // PDF Details
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: Color(0xFFB487EE), // Underline color
                      width: 2.0, // Underline thickness
                    ),
                  ),
                ),
                child: Text(
                  "Book Details",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    fontFamily: "Poppins",
                    color: Color(0xFF2C2C2C),
                  ),
                ),
              ),
            ),

// Additional Text Elements
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 10.0),
              child: Row(
                children: [
                  Text(
                    "Name : ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Red Hat Mono",
                      color: Color(0xFF618DEF),
                    ),
                  ),
                  Text(
                    " Cyber",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Red Hat Mono",
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
              child: Row(
                children: [
                  Text(
                    "Size : ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Red Hat Mono",
                      color: Color(0xFF618DEF),
                    ),
                  ),
                  Text(
                    " 50.3MB",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Red Hat Mono",
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
              child: Row(
                children: [
                  Text(
                    "Date : ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Red Hat Mono",
                      color: Color(0xFF618DEF),
                    ),
                  ),
                  Text(
                    " 2023-09-25", // Replace with your desired date
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Red Hat Mono",
                      color: Color(0xFF000000),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),

// View PDF Button
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topLeft, // Align to the left
                    child: GestureDetector(
                      onTap: () {
                        // Handle View PDF button tap here
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
                            "View Book",
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

// Download Button
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Align(
                    alignment: Alignment.topRight, // Align to the right
                    child: GestureDetector(
                      onTap: () {
                        // Handle Download button tap here
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
                            "Download",
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
              ],
            ),

            // Add your PDF details content here
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  BackButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: onPressed,
    );
  }
}
