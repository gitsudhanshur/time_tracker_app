import 'package:flutter/material.dart';
import 'entries.dart';
import 'nav_button.dart';
import 'working_hours.dart';

class ClockInOutScreen extends StatelessWidget {
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
                  'assets/images/time.png', 
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 15),
                Text(
                  'Clock In/Out',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    height: 30,
                    fontWeight: FontWeight.w500,
                    wordSpacing: 2,
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
              height: 50, 
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 44, 48, 141),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            top: 0, 
            left: 16,
            right: 16,
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.circular(20),
              child: WorkingHours(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 120),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Entries(),
                    ),
                  ),
                  SizedBox(height: 20),
                  NavButton(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
