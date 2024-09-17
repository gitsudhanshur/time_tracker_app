import 'package:flutter/material.dart';
import 'package:time_tracker_app/ClockInOut/clock_in_out_screen.dart';

class ClockInScreen extends StatelessWidget {
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
              children: [
                Spacer(),

                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset(
                      'assets/images/time.png',
                      height: 20,
                      width: 20,
                    ),
                    SizedBox(width: 10),
                    Text(
                      'Clock In',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        wordSpacing: 2,
                      ),
                    ),
                  ],
                ),
            
                Spacer(),
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
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Centered Image
              Container(
                width: 300,  
                height: 300, 
                decoration: BoxDecoration(
                  shape: BoxShape.circle, 
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/photo.png',
                    ),
                    fit: BoxFit.cover, 
                  ),
                ),
              ),
              SizedBox(height: 140),

              // Photo label
              Text(
                'PHOTO',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 85),
                  Spacer(),
                  IconButton(
                    icon: Image.asset('assets/images/camera.png', height: 69, width: 69),
                    onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClockInOutScreen()),
                      );
                    },
                  ),
                  SizedBox(width: 40),
                  IconButton(
                    icon: Image.asset('assets/images/flip.png', height: 30, width: 30),
                    onPressed: () {},
                  ),
                  Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
