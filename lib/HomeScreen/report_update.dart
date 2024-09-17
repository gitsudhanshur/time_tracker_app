import 'package:flutter/material.dart';
import 'package:time_tracker_app/confirmation_screen.dart';

class ReportUpload extends StatelessWidget {
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
                      reportRow('Guard\'s statement', 'Lorem'),
                      reportRow('Action Taken By The Guard', 'Lorem'),
                      reportRow('Action Taken By The Management', 'Lorem'),
                      reportRow('Result of The Incident', 'Lorem'),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Image.asset('assets/images/upload.png', height: 26, width: 26,),
                  label: Text('Upload Here', style: TextStyle(color: Colors.white)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[700],
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ConfirmationScreen()),
                        );
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.yellow[700]),
                  ),
                  style: OutlinedButton.styleFrom(
                    minimumSize: Size(double.infinity, 50),
                    side: BorderSide(color: Colors.yellow[700]!, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
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
}

