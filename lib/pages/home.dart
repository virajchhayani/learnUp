import 'package:flutter/material.dart';
import 'package:learnup/pages/pdf.dart';
import 'package:learnup/widgets.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         '/pdfs': (context) => PDFScreen(),
//       },
//       home: MyHomePage(),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Viraj Chhayani",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: "Inknut Antiqua",
                color: Color(0xFF000000),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SearchPage(),
            TextAndImageContainer(),
            ButtonBarWidget(),
            RecentViewWidget(
              height: screenHeight * 0.5, // Use screenHeight here
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(),
    );
  }
}
