import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:liqueous_app/Component/Drawer/end_drawer.dart';

import '../../Component/roundbutton.dart';

class ViewAllScreen extends StatefulWidget {
  const ViewAllScreen({super.key});

  @override
  State<ViewAllScreen> createState() => _ViewAllScreenState();
}

class _ViewAllScreenState extends State<ViewAllScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false; // Prevent back navigation
      },
      child: Scaffold(
        appBar: (AppBar(
          leading: IconButton(
            icon: const Image(
              image: AssetImage('images/icon/previous.png'),
              color: Colors.grey,
              height: 25,
            ),
            onPressed: () {
              Get.back();
            },
          ),
        )),
        endDrawer: MyDrawer(),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        'Loan Insights',
                        style: GoogleFonts.mulish(
                          color: Colors.black,
                          fontSize: 22,
                          fontWeight: FontWeight.w800,
                          letterSpacing: -0.44,
                        ),
                      ),
                      Text(
                        'Here’s your insight of loan',
                        style: GoogleFonts.mulish(
                          color: Color(0xFF656565),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.20,
                        ),
                      )
                    ],
                  ),
                  Container(
                      width: 30,
                      height: 30,
                      decoration: ShapeDecoration(
                        color: Color(0xFF0D9488),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      child: SvgPicture.asset(
                        'images/svg/refresh2.svg',
                        height: 2,
                        width: 5,
                      )

                      //Image(image: AssetImage('images/icon/refresh2.png')),
                      )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Search stocks.',
                        prefixIcon: Icon(Icons.search),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        )),
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
