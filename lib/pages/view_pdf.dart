import 'package:flutter/material.dart';

class view_pdf extends StatelessWidget {
  const view_pdf({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: ()=>Navigator.pop(context,false),
        ),
        title: Text('Go to Back'),
      ),
      body:SingleChildScrollView(
        padding: const EdgeInsets.only(left: 16,right: 16),
        child: Column(
          children: [
            Image.asset('assets/images/image1.png'),
            SizedBox(height: 1),
            Image.asset('assets/images/image2.png'),
            SizedBox(height: 1),
            Image.asset('assets/images/image3.png')
          ],
        )
      )
    );
  }
}