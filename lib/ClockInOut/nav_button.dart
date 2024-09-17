import 'package:flutter/material.dart';
import 'package:time_tracker_app/SelectBreak/Select_break_screen.dart';

import '../ClockIn/clock_in_screen.dart';

class NavButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ElevatedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SelectBreakScreen()),
            );
          },
          icon: Image.asset(
            'assets/images/coffee.png',
            width: 24,
            height: 24,
          ),
          label: Text(
            'Take Break',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.amber,
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 100),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        const SizedBox(height: 16), 
        OutlinedButton.icon(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ClockInScreen()),
            );
          },
          icon: Image.asset(
            'assets/images/off.png',
            width: 24,
            height: 24,
          ),
          label: Text(
            'Clock Out',
            style: TextStyle(
              color: Colors.amber,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: OutlinedButton.styleFrom(
            side: BorderSide(color: Colors.amber, width: 2), 
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 105),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ],
    );
  }
}
