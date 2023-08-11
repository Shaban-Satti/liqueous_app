import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:liqueous_app/Component/Drawer/end_drawer.dart';

import '../../Component/roundbutton.dart';
import '../Component/viewall_container.dart';
import 'Filter/filter.dart';

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
        body: SingleChildScrollView(
          child: Column(
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
                        width: 26,
                        height: 25,
                        decoration: ShapeDecoration(
                          color: Color(0xFF0D9488),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                        child: SvgPicture.asset(
                          'images/svg/refresh.svg',
                          height: 3,
                          width: 16,
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
                            borderRadius: BorderRadius.circular(25.0),
                          )),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _showFilterDialog(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Filter & Sort",
                          style: GoogleFonts.mulish(
                            fontSize: 9,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff808080),
                            height: 11 / 9,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset('images/svg/filter.svg'),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Apple.png',
                    title: 'AAPL',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Netflix.png',
                    title: 'NETFLIX',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Sale',
                    action: 'Quote',
                    subAction: 'Agent',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/google.png',
                    title: 'GOOGL',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Meta.png',
                    title: 'META',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Twitter.png',
                    title: 'TWITER',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Apple.png',
                    title: 'AAPL',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Apple.png',
                    title: 'AAPL',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Netflix.png',
                    title: 'NETFLIX',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Sale',
                    action: 'Quote',
                    subAction: 'Agent',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/google.png',
                    title: 'GOOGL',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Meta.png',
                    title: 'META',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                  ReuseableContainer(
                    imageAsset: 'images/icon/Twitter.png',
                    title: 'TWITER',
                    date: DateFormat('MM/d/yyyy').format(DateTime.now()),
                    time: DateFormat('h:mm a').format(DateTime.now()),
                    amount: '\$1,28,034.64',
                    category: 'Financing',
                    action: 'Quote',
                    subAction: 'Self',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showFilterDialog(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (BuildContext dialogContext) {
        return FilterDialog();
      },
    );
  }
}
