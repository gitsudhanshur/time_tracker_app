import 'package:flutter/material.dart';
import 'current_entry.dart';
import 'end_break_button.dart';
import 'entries_list.dart';
import 'working_hours_card.dart';

class BreakTimeScreen extends StatelessWidget {
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
                  'End Break Time',
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
              child: WorkingHoursCard(),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(22.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(height: 105),
                  CurrentEntry(),
                  Expanded(
                    child: SingleChildScrollView(
                      child: EntriesList(),
                    ),
                  ),
                  SizedBox(height: 20),
                  EndBreakButton(),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
