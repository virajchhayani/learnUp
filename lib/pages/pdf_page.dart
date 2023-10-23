import 'package:flutter/material.dart';

class pdf_page extends StatefulWidget {
  const pdf_page({super.key});

  @override
  State<pdf_page> createState() => _pdf_pageState();
}

class _pdf_pageState extends State<pdf_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDFs",style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('User Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),
                     Container(
                      width:  25,
                      height:  1.5,
                      decoration:  BoxDecoration (
                       color:  Color.fromARGB(255, 167, 58, 245)
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('Viraj Chhayani',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500)),
                    SizedBox(height: 5),
                    Text('RK University - Rajkot',style: TextStyle(fontWeight: FontWeight.w400))
                  ],
                ),
                Spacer(),
                Icon(Icons.picture_as_pdf_outlined,size: 50)
              ],
            ),
            SizedBox(height: 20),
            Text('PDF Details',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700)),
            Container(
              width:  25,
              height:  1.5,
              decoration:  BoxDecoration (
                color: Color.fromARGB(255, 167, 58, 245)
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name',style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 10),
                    Text('Size',style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 10),
                    Text('Date',style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(':',style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 10),
                    Text(':',style: TextStyle(color: Colors.blue)),
                    SizedBox(height: 10),
                    Text(':',style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Assignment_1'),
                    SizedBox(height: 10),
                    Text('20.6 MB'),
                    SizedBox(height: 10),
                    Text('15/09/2023')
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  child: Expanded(
                    child: Container(
                      height: 30,
                      child: Center(
                        child: Text("View PDF",style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ),
                ),
                SizedBox(width: 24),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue
                  ),
                  child: Expanded(
                    child: Container(
                      height: 30,
                      child: Center(
                        child: Text("Download",style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}