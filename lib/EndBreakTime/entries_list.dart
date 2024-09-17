import 'package:flutter/material.dart';

Widget EntriesList() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          "Today's Entries",
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
      ),

      SizedBox(height: 10),
      Column(
        children: [
          EntryItem(
            title: 'Entry 3 - Ipsum',
            time: '30 Aug, 03:03:00 - 03:06:00',
            additionalInfo: 'Lorem Ipsum 1',
            status: '00:03:00',
            statusColor: const Color.fromARGB(255, 44, 48, 141),
          ),
          EntryItem(
            title: 'Break - Task Transition Break',
            time: '30 Aug, 03:03:00 - 03:06:00',
            additionalInfo: 'Lorem Ipsum 1',
            status: '00:04:00',
            statusColor: const Color.fromARGB(255, 44, 48, 141),
          ),
          EntryItem(
            title: 'Entry 4 - Ipsum',
            time: '30 Aug, 03:03:00 - 03:06:00',
            additionalInfo: 'Lorem Ipsum 1',
            status: '00:03:00',
            statusColor: const Color.fromARGB(255, 44, 48, 141),
          ),
          EntryItem(
            title: 'Entry 5 - Ipsum',
            time: '30 Aug, 03:03:00 - 03:06:00',
            additionalInfo: 'Lorem Ipsum 1',
            status: 'Progress',
            statusColor: const Color.fromARGB(255, 23, 247, 23),
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
    required String status,
    required Color statusColor,
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

          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: statusColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(
              status,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
}
