import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../roundbutton.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});
  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  bool isEndDrawerOpen = false;

  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                //  color: Colors.black,
                height: 100,
                padding: const EdgeInsets.symmetric(
                    horizontal: 16), // Add horizontal padding
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      backgroundColor: Colors.blue,
                      radius: 40,
                    ),
                    const SizedBox(width: 16), // Add spacing between widgets
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Ian',
                          style: GoogleFonts.mulish(
                            color: Colors.black,
                            fontSize: 22,
                            fontWeight: FontWeight.w800,
                            letterSpacing: -0.44,
                          ),
                        ),
                        Text(
                          'ID: GNGO0L6LZO',
                          style: GoogleFonts.mulish(
                            color: Color(0xFF656565),
                            fontSize: 9,
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.18,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.email,
                              size: 12,
                            ),

                            const SizedBox(width: 5), // Add more spacing
                            Text(
                              'Not Verified',
                              style: GoogleFonts.mulish(
                                color: Color(0xFFF80000),
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.18,
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Image(
                              image: AssetImage('images/icon/time.png'),
                              height: 12,
                              width: 12,
                            ),
                            const SizedBox(
                              width: 5,
                            ),

                            Text(
                              DateFormat('MMM d, yyyy').format(DateTime.now()),
                              style: GoogleFonts.mulish(
                                color: Color(0xFF22C553),
                                fontSize: 9,
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.18,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: ListTile(
              leading: SvgPicture.asset(
                'images/svg/dashboard.svg',
                color: Colors.black,
              ),
              title: Text(
                'Dashboard',
                style: GoogleFonts.inter(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
              onTap: () {
                // Handle drawer item tap
                Navigator.pop(context); // Close the drawer
              },
            ),
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/svg/arrangehorizontalcircle.svg',
              color: Colors.black,
            ),
            title: Text(
              'Requests',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
            ),
            onTap: () {
              // Handle drawer item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/svg/people.svg',
              color: Colors.black,
            ),
            title: Text(
              'Task Center',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
            ),
            onTap: () {
              // Handle drawer item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          Row(
            children: [
              SizedBox(width: 30),
              Text(
                'SETTINGS AND SECURITY',
                style: TextStyle(
                  color: Color(0xFF0D9488),
                  fontSize: 12,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.24,
                ),
              ),
            ],
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/svg/people-1.svg',
              color: Colors.black,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
            ),
            onTap: () {
              // Handle drawer item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: SvgPicture.asset(
              'images/svg/key.svg',
              color: Colors.black,
            ),
            title: Text(
              'Security',
              style: GoogleFonts.inter(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
            ),
            onTap: () {
              // Handle drawer item tap
              Navigator.pop(context); // Close the drawer
            },
          ),
          SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: RoundButton(
              title: 'Switch to Agent',
              textColor: Colors.blue,
              buttonColor: Colors.white,
              onPress: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: RoundButton(
              title: 'Log out',
              textColor: Colors.white,
              buttonColor: Colors.blue,
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}
