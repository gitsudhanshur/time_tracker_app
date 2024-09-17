import 'package:flutter/material.dart';
import 'package:time_tracker_app/HomeScreen/home_screen.dart';

class ConfirmationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
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
                Text(
                  'Confirmation',
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
          Column(
            children: [
              SizedBox(height: 90),
              Row(
                children: [
                  Spacer(flex: 2), 
                  ConfirmationDialog(),
                  Spacer(flex: 2),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ConfirmationDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 45.0,
            offset: Offset(0, 5),
          ),
        ],
      ),
      width: 300,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: 30,
            child: Image.asset(
              'assets/images/check.png',
              height: 65,
              width: 65),
          ),
          SizedBox(height: 20),
          Text(
            'Are you sure you wish to proceed with publishing this report?',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomeScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.yellow[700],
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 90),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Yes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: OutlinedButton.styleFrom(
              side: BorderSide(color: Colors.yellow[700]!),
              padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              'Cancel',
              style: TextStyle(
                color: Colors.yellow[700],
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
