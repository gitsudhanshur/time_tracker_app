import 'package:flutter/material.dart';

import '../ClockInOut/clock_in_out_screen.dart';

class EndBreakButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ClockInOutScreen()),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.amber, 
        padding: const EdgeInsets.symmetric(vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Center(
        child: Text(
          'End Break',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
