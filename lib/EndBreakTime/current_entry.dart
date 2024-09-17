import 'package:flutter/material.dart';

Widget CurrentEntry() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 16.0),
        child: Text(
          "Current Entry",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),

      Column(
        children: [
          EntryItem(
            title: 'Break - Task Transition Break',
            time: '30 Aug, 03:03:00 - 03:06:00',
            additionalInfo: 'Lorem Ipsum 1',
          ),
        ],
      ),
    ],
  );
}


  Widget EntryItem({
    required String title,
    required String time,
    required String additionalInfo,
  }) {
    return Container(
      margin: EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 10,
                ),
              ),
              SizedBox(height: 2),
              Text(
                time,
                style: TextStyle(color: Colors.black, fontSize: 10, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 2),
              Text(
                additionalInfo,
                style: TextStyle(color: Colors.grey, fontSize: 8, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ],
      ),
    );
}
