import 'package:flutter/material.dart';

class ReportsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 44, 48, 141),
          centerTitle: true,
          leading: Padding(
            padding: EdgeInsets.only(top: 26),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.white,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          title: Padding(
            padding: EdgeInsets.only(top: 30),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  'assets/images/reports.png',
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 10),
                Text(
                  'Report',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 1.5,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(top: 26),
              child: IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.white,
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 30,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 44, 48, 141),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(height: 4),
                    ReportTypeButton('Incident'),
                    SizedBox(width: 4),
                    ReportTypeButton('Information'),
                    SizedBox(width: 4),
                    ReportTypeButton('CCP'),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Title',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16, color: Colors.red),
                    ),
                    Text(
                      'My Title',
                      style: TextStyle(
                          fontWeight: FontWeight.w500, fontSize: 16, color: Colors.red),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Expanded(
                  child: ListView(
                    children: [
                      reportRow('Detachment', 'Ipsum'),
                      reportRow('Post', 'Ipsum'),
                      reportRow('Date & Time of The Incident', 'Ipsum'),
                      reportRow('Incident/Information/CCP', 'Ipsum'),
                      reportRow('Location of Incident', 'abc Road, Pin-138'),
                      reportRow('Suspect/Invoice Personnel', 'Ipsum'),
                      reportRow('Statement of Suspect/Witness', 'Ipsum'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget reportRow(String title, String description) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500)),
            Text(description, style: TextStyle(fontSize: 12, color: Colors.grey, fontWeight: FontWeight.w400)),
          ],
        ),
        Divider(color: Colors.grey),
      ],
    );
  }

  Widget ReportTypeButton(String label) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
          side: BorderSide(color: const Color.fromARGB(255, 44, 48, 141)),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(color: const Color.fromARGB(255, 44, 48, 141), fontWeight: FontWeight.bold),
      ),
    );
  }
}