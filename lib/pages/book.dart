import 'package:flutter/material.dart';

import '../widgets.dart';
import 'home.dart';

class BOOKScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  color: Colors.white,
                  child: Text(
                    "BOOKs",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Inknut Antiqua",
                      color: Color(0xFF000000),
                    ),
                  ),
                ),
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
              ],
            ),
            SearchPage(),
            RecentViewWidget(height: MediaQuery.of(context).size.height*0.75,),
          ],
        ),
      ),
            bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
