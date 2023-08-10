import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:liqueous_app/Screen/HomeScreen/home_screen.dart';
import 'package:liqueous_app/Screen/stock_insite.dart';
import 'package:liqueous_app/Screen/support.dart';

class bottomNavigationBar extends StatefulWidget {
  const bottomNavigationBar({Key? key}) : super(key: key);

  @override
  bottomNavigationBarState createState() => bottomNavigationBarState();
}

class bottomNavigationBarState extends State<bottomNavigationBar> {
  @override
  void initState() {
    super.initState();
  }

  var smallHeading = 15.0;
  var largeHeading = 20.0;
  static var selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    StockInSightScreen(),
    SupportScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (bottomNavigationBarState.selectedIndex == 0) {
          return true;
        } else {
          bottomNavigationBarState.selectedIndex = 0;
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => bottomNavigationBar()),
          );
          return false;
        }
      },
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFFCCCCCC),
          selectedItemColor: Color(0xFF5C96FD),
          onTap: _onTap,
          currentIndex: selectedIndex,
          // selectedLabelStyle: GoogleFonts.poppins(fontSize: 10),

          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade400.withOpacity(0.7),
                              spreadRadius: 1,
                              blurRadius: 5)
                        ]),
                    child: Column(
                      children: [
                        SvgPicture.asset(
                          'images/svg/dashboard.svg',
                          height: 25,
                          color: selectedIndex == 0
                              ? Color(0xFF5C96FD)
                              : Color(0xFFCCCCCC),

                          //color: Colors.green,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Dashboard',
                    style: GoogleFonts.mulish(
                      //color: Color(0xFF5C96FD),

                      color: selectedIndex == 0
                          ? Color(0xFF5C96FD)
                          : Color(0xFFCCCCCC),

                      fontSize: 10,

                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.12,
                    ),
                  )
                ],
              ),
              label: "Dashboard",
              backgroundColor: Colors.white,
            ),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400.withOpacity(0.7),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'images/svg/Stock icon.svg',
                              height: 25,
                              color: selectedIndex == 1
                                  ? Color(0xFF5C96FD)
                                  : Color(0xFFCCCCCC),
                              //color: Colors.green,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Stock Insight',
                      style: GoogleFonts.mulish(
                        //color: Color(0xFF5C96FD),

                        color: selectedIndex == 1
                            ? Color(0xFF5C96FD)
                            : Color(0xFFCCCCCC),

                        fontSize: 10,

                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.12,
                      ),
                    )
                  ],
                ),
                label: "Stock Insight"),
            BottomNavigationBarItem(
                icon: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade400.withOpacity(0.7),
                                  spreadRadius: 1,
                                  blurRadius: 5)
                            ]),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'images/svg/book.svg',
                              height: 25,
                              color: selectedIndex == 2
                                  ? Color(0xFF5C96FD)
                                  : Color(0xFFCCCCCC),
                              //color: Colors.green,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Support',
                      style: GoogleFonts.mulish(
                        //color: Color(0xFF5C96FD),

                        color: selectedIndex == 2
                            ? Color(0xFF5C96FD)
                            : Color(0xFFCCCCCC),

                        fontSize: 10,

                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.12,
                      ),
                    )
                  ],
                ),
                label: "Support"),
          ],
        ),
        body: _widgetOptions.elementAt(selectedIndex),
      ),
    );
  }

  void _onTap(int index) {
    selectedIndex = index;
    setState(() {});
  }
}
