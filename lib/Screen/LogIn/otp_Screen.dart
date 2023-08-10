// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:liqueous_app/Component/roundbutton.dart';
import 'package:liqueous_app/Screen/HomeScreen/home_screen.dart';

import '../../Component/ButomNavigation/buttomnavigation.dart';
import '../dashboard.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final _firstOtpController = TextEditingController();
  final _secondOtpController = TextEditingController();

  @override
  void dispose() {
    _firstOtpController.dispose();
    _secondOtpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('  Enter OTP',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text('    Kindly Enter the OTP sent to '),
                Text(
                  '03175836948',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 25,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 60),
                child: SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: TextFormField(
                            onChanged: (vale) {
                              if (vale.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: Theme.of(context).textTheme.labelLarge,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: TextFormField(
                            onChanged: (vale) {
                              if (vale.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: Theme.of(context).textTheme.labelLarge,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: TextFormField(
                            onChanged: (vale) {
                              if (vale.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: Theme.of(context).textTheme.labelLarge,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 60,
                          width: 60,
                          child: TextFormField(
                            onChanged: (vale) {
                              if (vale.length == 1) {
                                FocusScope.of(context).nextFocus();
                              }
                            },
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            style: Theme.of(context).textTheme.labelLarge,
                            inputFormatters: [
                              LengthLimitingTextInputFormatter(1),
                              FilteringTextInputFormatter.digitsOnly,
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 25,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: RoundButton(
                  title: 'Verify OTP',
                  onPress: () {
                    Get.to(
                        //MyApp()
                        //MyHomePage()

                        bottomNavigationBar()
                        //HomeScreen()
                        );
                  }),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  " Don't get code? ",
                ),
                Text("Resend",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold)),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
          ],
        ),
        const Positioned(
            top: 350,
            child: Image(image: AssetImage('images/Graphic_Left.png'))),
        const Positioned(
            top: 500,
            right: 0,
            child: Image(image: AssetImage('images/Graphic_Right.png'))),
        Positioned(
            top: 500,
            // left: 20,
            child: Container(
                height: 500,
                width: MediaQuery.sizeOf(context).width,
                // color: Colors.grey,
                decoration: const ShapeDecoration(
                  //  gradient: LinearGradient(colors: Colors.accents),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(150),
                      topRight: Radius.circular(150),
                    ),
                  ),
                ),
                child: Image(
                  image: AssetImage('images/Frame 2.png'),
                ))),
      ]),
    );
  }
}
