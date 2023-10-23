import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:learnup/pages/Register.dart';
import 'package:learnup/pages/book.dart';
import 'package:learnup/pages/community.dart';
import 'package:learnup/pages/home.dart';
import 'package:learnup/pages/join_community.dart';
import 'package:learnup/pages/pdf_page.dart';
import 'package:learnup/pages/profile.dart';
import 'package:learnup/pages/sharing.dart';
import 'package:learnup/pages/pdf.dart';

// class Profilename extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         SizedBox(height: 50),
//         Container(
//           color: Colors.white,
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Row(
//               children: <Widget>[
//                 SizedBox(width: 16),
//                 Text(
//                   'Viraj Chhayani,', // Replace with the user's name
//                   style: TextStyle(
//                     fontSize: 30,
//                     color: Colors.black,
//                     fontFamily: 'Inknut Antiqua',
//                     fontWeight: FontWeight.w400,
//                     fontStyle: FontStyle.normal,
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _searchController = TextEditingController();
  String searchText = '';

  void _performSearch() {
    setState(() {
      searchText = _searchController.text;
    });
    print('Searching for: $searchText');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffebe6e6), Color(0x00f4f4f4)],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search  Books and PDFs......',
                    border: InputBorder.none,
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
              // Add the search button as a GestureDetector
              Positioned(
                right: 8.0,
                top: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: _performSearch, // Define the _performSearch function
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Stack(
                      children: [
                        Container(
                          width: 9.279375076293945,
                          height: 9.278749465942383,
                          color: Colors.transparent, // Adjust color as needed
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/flat-color-icons_search.png', // Replace with your image path
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 16),
          // Display search results or other content based on searchText
          // Your other content here
          // ...
          // Example:
          // Text("Other content goes here"),
        ],
      ),
    );
  }
}

class TextAndImageContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        width: 500.0,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15.0), // Add borderRadius
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Learning Books and PDF',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(8.0)),
                    SizedBox(height: 8.0),
                    Text(
                      'Never stop learning because life never stops teaching',
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.blue, // Background color for the image area
                child: Center(
                  child: Image.asset(
                    'assets/Illustration.png', // Replace with your image path
                    width: 80.0,
                    height: 80.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ButtonBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final buttonSize = 80.0; // Define the button size here

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  width: buttonSize,
                  height: buttonSize,
                  child: IconButton(
                    icon: Image.asset('assets/pdficon.png'),
                    onPressed: () {
                      // Navigate to PDFScreen when the button is pressed
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              PDFScreen(), // Replace with your actual screen widget
                        ),
                      );
                    },
                  ),
                ),
                Text('PDFs'),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: buttonSize,
                  height: buttonSize,
                  child: IconButton(
                    icon: Image.asset('assets/bookicon.png'),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              BOOKScreen(), // Replace with your actual screen widget
                        ),
                      );
                    },
                  ),
                ),
                Text('BOOKS'),
              ],
            ),
            Column(
              children: <Widget>[
                Container(
                  width: buttonSize,
                  height: buttonSize,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle, // Use a circular shape
                  ),
                  child: IconButton(
                    icon: Icon(Icons.people),
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) =>
                              CommunityPage(), // Replace with your actual screen widget
                        ),
                      );
                    },
                    color: Colors.white,
                  ),
                ),
                Text('Community'),
              ],
            ),
          ],
        ),
        SizedBox(height: 25), // Add a SizedBox with your desired height
      ],
    );
  }
}

class RecentViewWidget extends StatelessWidget {
  final double height;
  RecentViewWidget({required this.height});
  final List<String> recentFiles = [
    'File 1.pdf',
    'File 2.pdf',
    'File 3.pdf',
    'File 4.pdf',
    'File 5.pdf',
    'File 6.pdf',
    'File 7.pdf',
    'File 8.pdf',
    'File 9.pdf',
    'File 10.pdf',
    'File 11.pdf',
    'File 12.pdf',
    'File 13.pdf',
    'File 14.pdf',
    'File 15.pdf',
    'File 16.pdf',
    'File 17.pdf',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      color: Color(0xFFE7E7E7),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Recent View",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Color(0xFF2C2C2C),
              fontFamily: 'Poppins',
            ),
          ),
          SizedBox(height: 8.0),
          Container(
            width: 50,
            height: 4.0,
            color: Color(0xFFB487EE),
            margin: EdgeInsets.only(top: 0.0),
          ),
          SizedBox(height: 16.0),
          Container(
            height: height,
            child: ListView.builder(
              itemCount: recentFiles.length,
              shrinkWrap:
                  true, // Important to prevent ListView from taking all available space
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 210, 210, 210),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.picture_as_pdf,
                        color: Colors.red,
                      ),
                    ),
                  ),
                  title: Text(recentFiles[index]),
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => pdf_page(),
                      ),
                    );
                    // Handle file tap action
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  // Define a color for the selected and unselected icons
  final Color _selectedIconColor = Colors.blue;
  final Color _unselectedIconColor = Colors.grey;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    switch (index) {
      case 0:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => MyHomePage(),
          ),
        );
        break;
      case 1:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => SharingPage(),
          ),
        );
        break;
      case 2:
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (context) => ProfilePage(),
          ),
        );
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: _selectedIndex == 0
                ? _selectedIconColor
                : _unselectedIconColor, // Use the selected/unselected color
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Stack(
            children: [
              Icon(Icons.share),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFFB487EE),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ),
            ],
          ),
          label: 'Sharing',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: _selectedIndex == 2
                ? _selectedIconColor
                : _unselectedIconColor, // Use the selected/unselected color
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}

//--------------------------------------------------------------------

class BackButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;

  BackButtonWidget({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: CircleAvatar(
        backgroundColor: Color(0xFFB487EE),
        child: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 202,
      padding: EdgeInsets.only(
          left: 25.0, right: 25.0, top: 25.0, bottom: 0), // Add padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xb5bbcbff), Color(0xffffedfd)],
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 51.15,
            height: 51.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(51.15),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFFF8CF3), // Start color (#FF8CF3)
                  Color(0x0087A3FF), // End color (rgba(135, 163, 255, 0.00))
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),

          SizedBox(width: 16), // Add spacing between the button and text
          Text(
            'Upload PDF',
            style: TextStyle(
              color: Color(0xFF000000), // Text color
              fontFamily: 'Inknut Antiqua', // Font family
              fontSize: 17,
              fontWeight: FontWeight.w400, // Font weight
              fontStyle: FontStyle.normal, // Font style
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 202,
      padding: EdgeInsets.only(
          left: 25.0, right: 25.0, top: 25.0, bottom: 0), // Add padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xb5bbcbff), Color(0xffffedfd)],
        ),
      ),
      child: Row(
        children: [
          Container(
            width: 51.15,
            height: 51.15,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(51.15),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xFFFF8CF3), // Start color (#FF8CF3)
                  Color(0x0087A3FF), // End color (rgba(135, 163, 255, 0.00))
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Center(
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 30,
              ),
            ),
          ),

          SizedBox(width: 16), // Add spacing between the button and text
          Text(
            'Upload Book',
            style: TextStyle(
              color: Color(0xFF000000), // Text color
              fontFamily: 'Inknut Antiqua', // Font family
              fontSize: 17,
              fontWeight: FontWeight.w400, // Font weight
              fontStyle: FontStyle.normal, // Font style
            ),
          ),
        ],
      ),
    );
  }
}

//-------------------------------------------------------------------

class ProfileName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Viraj Chhayani",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w400,
            color: Colors.black, // Set text color to black (#000)
            fontFamily: 'Inknut Antiqua', // Set font-family to Inknut Antiqua
          ),
        ),
        SizedBox(height: 5.0), // Add spacing between the name and university
        Text(
          "Rk University - Rajkot",
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
            color: Color(0xFF6A6A6A), // Set text color to the specified color
            fontFamily: 'Inknut Antiqua', // Set font-family to Inknut Antiqua
          ),
        ),
      ],
    );
  }
}

class PremiumUserBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // log('Viraj chhayani');
      },
      child: Container(
        width: 100,
        height: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(90),
          image: DecorationImage(
            image: AssetImage("assets/Rectangle8.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Text(
            "Premium User",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFFF0CB61), // Use the desired color
              fontFamily: 'Kodchasan',
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class LogoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>RegisterPage()));
        // log('Viraj chhayani');
      },
      child: Stack(
        alignment: Alignment.center,
        children: [
          Card(
            elevation: 5,
            child: Image.asset(
              "assets/Rectangle36.png",
              width: 80,
              height: 15,
              color: Colors.white, // Set the desired color
              filterQuality: FilterQuality.high,
            ),
          ),
          Row(
            children: [
              Icon(Icons.logout, size: 20),
              SizedBox(width: 4), // Add spacing between the container and text
              Text(
                "Log Out",
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFFBA2A23), // Use the desired color
                  fontFamily: 'Kodchasan',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CardWidget2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 202,
      padding: EdgeInsets.only(
          left: 25.0, right: 25.0, top: 25.0, bottom: 0), // Add padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xb5bbcbff), Color(0xffffedfd)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 51.15,
                height: 51.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(51.15),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFF8CF3), // Start color (#FF8CF3)
                      Color(
                          0x0087A3FF), // End color (rgba, 135, 163, 255, 0.00))
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(width: 16), // Add spacing between the button and text
              Text(
                'Join Community',
                style: TextStyle(
                  color: Color(0xFF000000), // Text color
                  fontFamily: 'Inknut Antiqua', // Font family
                  fontSize: 17,
                  fontWeight: FontWeight.w400, // Font weight
                  fontStyle: FontStyle.normal, // Font style
                ),
              ),
            ],
          ),
          SizedBox(height: 20), // Add spacing between the button and text
          Text(
            "- For Colleges or University Students Community\n"
            "- For Friend’s Community\n"
            "- For Universal Community",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF000000), // Text color
              fontFamily: 'Inknut Antiqua', // Font family
              fontWeight: FontWeight.w400, // Font weight
              fontStyle: FontStyle
                  .normal, // Font style // Adjust line height as needed
            ),
          ),
        ],
      ),
    );
  }
}

class CardWidget3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 202,
      padding: EdgeInsets.only(
          left: 25.0, right: 25.0, top: 25.0, bottom: 0), // Add padding
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(34),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Color(0xb5bbcbff), Color(0xffffedfd)],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                width: 51.15,
                height: 51.15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(51.15),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color(0xFFFF8CF3), // Start color (#FF8CF3)
                      Color(
                          0x0087A3FF), // End color (rgba, 135, 163, 255, 0.00))
                    ],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ),
              SizedBox(width: 16), // Add spacing between the button and text
              Text(
                'Create Community',
                style: TextStyle(
                  color: Color(0xFF000000), // Text color
                  fontFamily: 'Inknut Antiqua', // Font family
                  fontSize: 17,
                  fontWeight: FontWeight.w400, // Font weight
                  fontStyle: FontStyle.normal, // Font style
                ),
              ),
            ],
          ),
          SizedBox(height: 8), // Add spacing between the button and text
          Text(
            "- Create Colleges or University Students Community\n"
            "- Create Friend’s Community",
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF000000), // Text color
              fontFamily: 'Inknut Antiqua', // Font family
              fontWeight: FontWeight.w400, // Font weight
              fontStyle: FontStyle.normal, // Font style
            ),
          ),
        ],
      ),
    );
  }
}

class SearchPage1 extends StatefulWidget {
  @override
  _SearchPage1State createState() => _SearchPage1State();
}

class _SearchPage1State extends State<SearchPage1> {
  TextEditingController _searchController = TextEditingController();
  String searchText = '';

  void _performSearch() {
    setState(() {
      searchText = _searchController.text;
    });
    print('Searching for: $searchText');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                width: 250,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xffebe6e6), Color(0x00f4f4f4)],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
                child: TextField(
                  controller: _searchController,
                  decoration: InputDecoration(
                    hintText: 'Search name, college, etc.... ',
                    border: InputBorder.none,
                    fillColor: Colors.transparent,
                  ),
                ),
              ),
              // Add the search button as a GestureDetector
              Positioned(
                right: 8.0,
                top: 0,
                bottom: 0,
                child: GestureDetector(
                  onTap: _performSearch,
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Stack(
                      children: [
                        Container(
                          width: 9.279375076293945,
                          height: 9.278749465942383,
                          color: Colors.transparent, // Adjust color as needed
                        ),
                        Container(
                          width: 40,
                          height: 40,
                          child: Image.asset(
                            'assets/flat-color-icons_search.png', // Replace with your image path
                            width: 40,
                            height: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          // Display search results or other content based on searchText
          // Your other content here
          // ...
          // Example:
          // Text("Other content goes here"),
        ],
      ),
    );
  }
}
