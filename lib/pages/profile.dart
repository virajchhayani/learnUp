import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learnup/widgets.dart'; // Import your BackButtonWidget and CardWidget here
import 'package:learnup/pages/home.dart'; // Import your home.dart file here

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Profile",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Inknut Antiqua",
                color: Color(0xFF000000),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Container(
                alignment: Alignment.bottomLeft,
                width: 50,
                height: 4.0,
                color: Color(0xFFB487EE),
                margin: EdgeInsets.only(top: 0.0),
              ),
            ),
          ],
        ),
        leading: null,
        automaticallyImplyLeading: false,
        actions: [
          BackButtonWidget(
            onPressed: () {
              Navigator.of(context).pop();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20), // Add some spacing
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20.0), // Add horizontal padding
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProfileName(), // Add the ProfileName widget
                      SizedBox(height: 15),
                      Row(
                        children: [
                          PremiumUserBadge(), // Add the PremiumUserBadge widget
                          SizedBox(
                              width:
                                  15), // Add spacing between PremiumUserBadge and LogoutWidget
                          LogoutWidget(), // Add the LogoutWidget
                        ],
                      ),
                    ],
                  ),
                  Stack(
                    clipBehavior: Clip.hardEdge,
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage('assets/profile.png'),
                        radius: 55,
                      ),
                      InkWell(
                        onTap: () {},
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage:
                              AssetImage('assets/iconaddphoto.png'),
                          radius: 15,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 20), // Add some spacing below the profile section
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF2C2C2C), // Text color
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Container(
                alignment: Alignment.bottomLeft,
                width: 50,
                height: 4.0,
                color: Color(0xFFB487EE),
                margin: EdgeInsets.only(top: 0.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 8), // Add some spacing below "About"
                  Row(
                    children: [
                      Text(
                        "Name : ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF618DEF), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      Text(
                        "Viraj Chhayani",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Email : ",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF618DEF), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      Text(
                        "virajchhayani9999@gmail.com",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Collage : ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF618DEF), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      Text(
                        "RK University - Rajkot",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        "Date of Birth : ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF618DEF), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      Text(
                        "18/09/2003",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0), // Blue color
                          fontFamily: 'Red Hat Mono',
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.calendar_month_outlined),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            RecentViewWidget(
              height: MediaQuery.of(context).size.height * 0.5,
            )
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
