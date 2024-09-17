import 'package:flutter/material.dart';
import '../ClockInOut/clock_in_out_card.dart';
import 'arrow_painter.dart';
import 'report_update.dart';
import 'reports_screen.dart';
import 'sites_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final LayerLink _layerLink = LayerLink();
  int selectedMenuItemIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(135),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          child: AppBar(
            backgroundColor: const Color.fromARGB(255, 44, 48, 141),
            elevation: 0,
            automaticallyImplyLeading: false,
            flexibleSpace: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, 
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage('assets/images/Lorem.png'), 
                      ),
                      const SizedBox(width: 10),
          
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Lorem Ipsum',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'info@gmail.com',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
          
                      CompositedTransformTarget(
                        link: _layerLink, 
                        child: IconButton(
                          icon: Icon(Icons.notifications, color: Colors.white),
                          onPressed: () {
                            _showCustomPopupMenu(context);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(30), 
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  spreadRadius: 5,
                  blurRadius: 10,
                  offset: Offset(0, 3), 
                ),
              ],
            ),
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: Column(
              children: [
                _buildMenuItem(
                  imagePath: 'assets/images/time.png',
                  label: "Clock In/Out",
                  index: 0,
                  onTap: () {
                    setState(() {
                      selectedMenuItemIndex = 0;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ClockInOutCard()),
                    );
                  },
                ),
                _buildMenuItem(
                  imagePath: 'assets/images/report.png',
                  label: "Daily Activity Report (Future Improvement)",
                  index: 1,
                  onTap: () {
                    setState(() {
                      selectedMenuItemIndex = 1;
                    });
                  },
                ),
                _buildMenuItem(
                  imagePath: 'assets/images/reports.png',
                  label: "Report",
                  index: 2,
                  onTap: () {
                    setState(() {
                      selectedMenuItemIndex = 2;
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ReportUpload()),
                    );
                  },
                ),
                _buildMenuItem(
                  imagePath: 'assets/images/vehicle.png',
                  label: "Vehicle Monitoring (Future Improvement)",
                  index: 3,
                  onTap: () {
                    setState(() {
                      selectedMenuItemIndex = 3;
                    });
                  },
                ),
                _buildMenuItem(
                  imagePath: 'assets/images/calendar.png',
                  label: "Leave Filling",
                  index: 4,
                  onTap: () {
                    setState(() {
                      selectedMenuItemIndex = 4;
                    });
                  },
                ),
              ],
            ),
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
                spreadRadius: 3,
                blurRadius: 1,
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

  Widget _buildMenuItem({
    required String imagePath,
    required String label,
    required int index,
    required Function() onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Material(
        color: selectedMenuItemIndex == index ? Color(0xFF2F3180) : Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: onTap, 
          borderRadius: BorderRadius.circular(30), 
          splashColor: Colors.yellow.withOpacity(0.2), 
          child: Container(
            padding: const EdgeInsets.all(12.0), 
            child: Row(
              children: [
                Image.asset(
                  imagePath,
                  width: 24, 
                  height: 24, 
                  color: selectedMenuItemIndex == index ? Colors.white : Color(0xFF2F3180),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: RichText(
                    text: TextSpan(
                      text: label.split(' (')[0],  
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: selectedMenuItemIndex == index ? Colors.white : Colors.black, 
                      ),
                      children: label.contains('(Future Improvement)')
                          ? [
                              TextSpan(
                                text: ' (Future Improvement)', 
                                style: TextStyle(
                                  fontSize: 10, 
                                  fontWeight: FontWeight.w400,
                                  color: selectedMenuItemIndex == index ? Colors.white : Colors.black,
                                ),
                              ),
                            ]
                          : [],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showCustomPopupMenu(BuildContext context) {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final position = renderBox.localToGlobal(Offset.zero);
    final size = renderBox.size;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Stack(
          children: [
            Positioned(
              top: position.dy + 60,
              left: position.dx + size.width - 60, 
              child: CustomPaint(
                size: Size(40, 20),
                painter: ArrowPainter(), 
              ),
            ),
            Positioned(
              top: position.dy + 74, 
              left: position.dx + size.width - 210, 
              child: Material(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 5.0,
                child: Container(
                  width: 200,
                  height: 168,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ListTile(
                        leading: Icon(Icons.star, color: Color(0xFF2F3180), size: 10),
                        title: Text('Message From HR', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0),
                      ),
                      SizedBox(height: 0),
                      ListTile(
                        leading: Icon(Icons.star, color: Color(0xFF2F3180), size: 10),
                        title: Text('Notification Settings', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0),
                      ),
                      SizedBox(height: 0),
                      ListTile(
                        leading: Icon(Icons.star, color: Color(0xFF2F3180), size: 10),
                        title: Text('About', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 0),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}