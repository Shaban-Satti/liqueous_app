import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(),
            child: Image(
              image: AssetImage('images/logo-full.png'),
            ),
          ),
          ListTile(
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
          SizedBox(height: 180),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RoundButton(
              title: 'Switch to Agent',
              textColor: Colors.blue,
              buttonColor: Colors.white,
              onPress: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
