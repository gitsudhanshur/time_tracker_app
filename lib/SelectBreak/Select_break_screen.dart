import 'package:flutter/material.dart';

import '../EndBreakTime/break_time_screen.dart';
import '../HomeScreen/home_screen.dart';
import '../HomeScreen/reports_screen.dart';
import '../HomeScreen/sites_screen.dart';
import 'break_card.dart';

class SelectBreakScreen extends StatelessWidget {
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
                  'assets/images/coffee.png',
                  height: 20,
                  width: 20,
                ),
                SizedBox(width: 15),
                Text(
                  'Select Break',
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
              height: 25,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 44, 48, 141),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
            ),
          ),
          ListView(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            children: [
              BreakCard(
                  title: 'Short Break',
                  time: '0:20',
                  status: 'Paid',
                  statusColor: const Color.fromARGB(255, 23, 247, 23),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakTimeScreen()),
                    );
                  }),
              BreakCard(
                  title: 'Task Transition Break',
                  time: '0:10',
                  status: 'Paid',
                  statusColor: const Color.fromARGB(255, 23, 247, 23),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakTimeScreen()),
                    );
                  }),
              BreakCard(
                  title: 'Lunch Break',
                  time: '0:30',
                  status: 'Paid',
                  statusColor: const Color.fromARGB(255, 23, 247, 23),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakTimeScreen()),
                    );
                  }),
              BreakCard(
                  title: 'Equipment Check Break',
                  time: '0:40',
                  status: 'Paid',
                  statusColor: const Color.fromARGB(255, 23, 247, 23),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakTimeScreen()),
                    );
                  }
                ),
              BreakCard(
                  title: 'Recovery Break',
                  time: '0:30',
                  status: 'Unpaid',
                  statusColor: Colors.red,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BreakTimeScreen()),
                    );
                  }
                ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 247, 199, 23), 
            borderRadius: BorderRadius.circular(20), 
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(51, 0, 0, 0),
                spreadRadius: 10,
                blurRadius: 15,
                offset: Offset(0, 3),
              ),
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 10), 
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BottomNavItem(
                  imagePath: 'assets/images/home.png',
                  label: 'Home',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()), 
                    );
                  },
                ),
                BottomNavItem(
                  imagePath: 'assets/images/reports.png',
                  label: 'Reports',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportsScreen()),
                    );
                  },
                ),
                BottomNavItem(
                  imagePath: 'assets/images/sites.png',
                  label: 'Sites',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SitesScreen()), 
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }

  Widget BottomNavItem({required String imagePath, required String label, required Function() onTap}) {
    return GestureDetector(
      onTap: onTap, 
      child: Column(
        mainAxisSize: MainAxisSize.min, 
        children: [
          Image.asset(
            imagePath,
            height: 18,
            width: 18,  
          ),
          SizedBox(height: 5),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
