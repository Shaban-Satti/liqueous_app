import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';


class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reusable Component Example'),
      ),
      body: Center(
        child: ReuseableContainer(
          imageAsset: 'images/icon/Apple.png',
          title: 'AAPL',
          date: DateFormat('MM/d/yyyy').format(DateTime.now()),
          time: DateFormat('h:mm a').format(DateTime.now()),
          amount: '\$1,28,034.64',
          category: 'Financing',
          action: 'Quote',
          subAction: 'Self',
        ),
      ),
    );
  }
}

class ReuseableContainer extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String date;
  final String time;
  final String amount;
  final String category;
  final String action;
  final String subAction;

  const ReuseableContainer({
    required this.imageAsset,
    required this.title,
    required this.date,
    required this.time,
    required this.amount,
    required this.category,
    required this.action,
    required this.subAction,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390,
      height: 63,
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
              width: 5,
            ),
            Container(
              height: 39,
              width: 39,
              decoration: BoxDecoration(
                color: Color.fromRGBO(246, 246, 246, 1),
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Image(
                  image: AssetImage(imageAsset),
                  height: 23,
                  width: 23,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  title,
                  style: GoogleFonts.mulish(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
                Text(
                  date,
                  style: GoogleFonts.mulish(
                    color: Color(0xFF808080),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.24,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                SizedBox(
                  height: 34,
                ),
                Text(
                  time,
                  style: GoogleFonts.mulish(
                    color: Color(0xFF808080),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.24,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  amount,
                  style: GoogleFonts.mulish(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
                Text(
                  category,
                  style: GoogleFonts.mulish(
                    color: Color(0xFF808080),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.24,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Text(
                  action,
                  style: GoogleFonts.mulish(
                    color: Colors.black,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.24,
                  ),
                ),
                Text(
                  subAction,
                  style: GoogleFonts.mulish(
                    color: Color(0xFF808080),
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    letterSpacing: -0.24,
                  ),
                )
              ],
            ),
            SizedBox(
              width: 25,
            ),
            Center(
              child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
              ),
            )
          ],
        ),
      ),
    );
  }
}
