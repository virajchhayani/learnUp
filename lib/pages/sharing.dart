import 'package:flutter/material.dart';
import 'package:learnup/widgets.dart'; // Import your BackButtonWidget and CardWidget here
import 'package:learnup/pages/home.dart'; // Import your home.dart file here

class SharingPage extends StatelessWidget {
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
                    padding: EdgeInsets.all(8.0), // Adjust padding as needed
                    decoration: BoxDecoration(
                      color: Color(0xFFB487EE), // Background color
                      borderRadius:
                          BorderRadius.circular(100.0), // Rounded corners
                    ),
                    child: BackButtonWidget(
                      onPressed: () {
                        // Handle the back button press here
                        Navigator.of(context).pop(); // Pop the current route
                        Navigator.of(context).push( // Push the home.dart route
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
                    "Sharing",
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CardWidget(),
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
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CardWidget1(),
            ), // Include the CardWidget here
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
