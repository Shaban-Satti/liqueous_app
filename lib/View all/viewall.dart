import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../Component/roundbutton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false; // Prevent back navigation
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
        ),
        endDrawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(),
                  child: Image(
                    image: AssetImage('images/logo-full.png'),
                  )),
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
                  'Task Cente',
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
                  SizedBox(
                    width: 30,
                  ),
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
              SizedBox(
                height: 180,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundButton(
                    title: 'Switch to Agent',
                    textColor: Colors.blue,
                    buttonColor: Colors.white,
                    onPress: () {}),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: RoundButton(
                    title: 'Log out',
                    textColor: Colors.white,
                    buttonColor: Colors.blue,
                    onPress: () {}),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              // color: Colors.black,
              height: 100,
              padding: const EdgeInsets.symmetric(
                  horizontal: 16), // Add horizontal padding
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      )
                    ],
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 10.0, // Adjust the width based on your needs
                    height: 12.0, // Adjust the height based on your needs
                    child: const Icon(
                      Icons.email,
                      size: 12,
                    ),
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
            ),
            Container(
              width: 362,
              height: 176,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      width: 134,
                      height: 176,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        //  mainAxisAlignment: MainAxisAlignment.start,
                        //  crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                              width: 134,
                              height: 176,
                              decoration: ShapeDecoration(
                                color: Color(0xFF6C4FFE),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                shadows: [
                                  BoxShadow(
                                    color: Color(0x3F000000),
                                    blurRadius: 15,
                                    offset: Offset(3, 1),
                                    spreadRadius: -2,
                                  )
                                ],
                              ),
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle),
                                          child: Icon(Icons.apple_rounded)),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        'AAPL',
                                        style: GoogleFonts.mulish(
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w700,
                                          letterSpacing: -0.24,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    'Apple, Inc',
                                    style: GoogleFonts.mulish(
                                      color: Colors.white,
                                      fontSize: 8,
                                      fontWeight: FontWeight.w300,
                                      letterSpacing: -0.16,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  SvgPicture.asset(
                                    'images/svg/Stock graph 2.svg',

                                    width: 92,
                                    height: 48,
                                    //  color: Color(0xFFCCCCCC),

                                    //color: Colors.green,
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 15,
                                        ),
                                        Text(
                                          '+ 0.65%',
                                          style: GoogleFonts.mulish(
                                            color: Color(0xFF7AE3C0),
                                            fontSize: 12,
                                            fontWeight: FontWeight.w700,
                                            letterSpacing: -0.24,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                    Container(
                      width: 134,
                      height: 147,
                      decoration: ShapeDecoration(
                        color: Color(0xFF5C96FC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 15,
                            offset: Offset(3, 1),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                      child: Column(children: [
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Center(
                                child: Image(
                                  image: AssetImage('images/icon/google.png'),
                                  height: 13,
                                  width: 13,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              'GOOGL',
                              style: GoogleFonts.mulish(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            )
                          ],
                        ),
                        Text(
                          'Google, Inc',
                          style: GoogleFonts.mulish(
                            color: Colors.white,
                            fontSize: 8,
                            fontWeight: FontWeight.w300,
                            letterSpacing: -0.16,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SvgPicture.asset(
                          'images/svg/Stock graph 3.svg',
                          width: 92,
                          height: 48,
                        ),
                      ]),
                    ),
                    Container(
                      width: 116,
                      height: 118,
                      decoration: const ShapeDecoration(
                        color: Color(0xFFA3C3FE),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                            bottomRight: Radius.circular(15),
                          ),
                        ),
                        shadows: [
                          BoxShadow(
                            color: Color(0x3F000000),
                            blurRadius: 15,
                            offset: Offset(3, 1),
                            spreadRadius: -2,
                          )
                        ],
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'TSLA',
                                  style: GoogleFonts.mulish(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Tesla, Inc',
                                  style: GoogleFonts.mulish(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: -0.16,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Center(
                              child: SvgPicture.asset(
                                'images/svg/Stock graph 4.svg',
                                width: 92,
                                height: 48,
                              ),
                            ),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Loan Insights',
                    style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.32,
                    ),
                  ),
                  Text(
                    'View all',
                    style: GoogleFonts.mulish(
                      color: Color(0xFF808080),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  width: 360,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Center(
                            child: Image(
                              image: AssetImage('images/icon/google.png'),
                              height: 23,
                              width: 23,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'GOOGL',
                              style: GoogleFonts.mulish(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                            Text(
                              'Google, Inc',
                              style: GoogleFonts.mulish(
                                color: Color(0xFF808080),
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        SvgPicture.asset(
                          'images/svg/stock Graph.svg',
                          width: 78,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              '\$128.64',
                              style: GoogleFonts.mulish(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                            Text(
                              '+ 4.9%',
                              style: GoogleFonts.mulish(
                                color: Color(0xFF7AE3C0),
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 360,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Center(
                            child: Image(
                              image: AssetImage('images/icon/Netflix.png'),
                              height: 23,
                              width: 23,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'NETFLX',
                              style: GoogleFonts.mulish(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                            Text(
                              'Netflx, Inc',
                              style: GoogleFonts.mulish(
                                color: Color(0xFF808080),
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        SvgPicture.asset(
                          'images/svg/stock Graph red.svg',
                          width: 78,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              '\$429.7',
                              style: GoogleFonts.mulish(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                            Text(
                              '-3.63%',
                              style: GoogleFonts.mulish(
                                color: Color(0xFFF80000),
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 360,
                  height: 58,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              color: Colors.white, shape: BoxShape.circle),
                          child: const Center(
                            child: Image(
                              image: AssetImage('images/icon/Meta.png'),
                              height: 23,
                              width: 23,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              height: 15,
                            ),
                            Text(
                              'MEETA',
                              style: GoogleFonts.mulish(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                            Text(
                              'Meeta, Inc',
                              style: GoogleFonts.mulish(
                                color: Color(0xFF808080),
                                fontSize: 8,
                                fontWeight: FontWeight.w300,
                                letterSpacing: -0.16,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 80,
                        ),
                        SvgPicture.asset(
                          'images/svg/stock Graph red.svg',
                          width: 78,
                          height: 25,
                        ),
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            const SizedBox(
                              height: 15,
                            ),
                            Text(
                              '\$314.31',
                              style: GoogleFonts.mulish(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.24,
                              ),
                            ),
                            Text(
                              '-2.60%',
                              style: GoogleFonts.mulish(
                                color: Color(0xFFF80000),
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                letterSpacing: -0.16,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
                    child: Container(
                      width: 360,
                      height: 58,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side:
                              BorderSide(width: 0.50, color: Color(0xFFD9D9D9)),
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                  color: Colors.white, shape: BoxShape.circle),
                              child: const Center(
                                child: Image(
                                  image: AssetImage('images/icon/Apple.png'),
                                  height: 23,
                                  width: 23,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  'AAPL',
                                  style: GoogleFonts.mulish(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                                Text(
                                  'Apple, Inc',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFF808080),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w300,
                                    letterSpacing: -0.16,
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            SvgPicture.asset(
                              'images/svg/stock Graph.svg',
                              width: 78,
                              height: 25,
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            Column(
                              children: [
                                const SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  '\$192.58',
                                  style: GoogleFonts.mulish(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.24,
                                  ),
                                ),
                                Text(
                                  '+ 4.9%',
                                  style: GoogleFonts.mulish(
                                    color: Color(0xFF7AE3C0),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.16,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recent News',
                    style: GoogleFonts.mulish(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.32,
                    ),
                  ),
                  Text(
                    'See all',
                    style: GoogleFonts.mulish(
                      color: Color(0xFF808080),
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.24,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
