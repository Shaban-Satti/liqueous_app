import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:liqueous_app/Component/roundbutton.dart';

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
          // leading: Icon(Icons.arrow_back_ios_outlined),
          )),
      body: Stack(children: [
        Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(' Enter OTP',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text('  Kindly Enter the OTP sent to '),
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
                          width: 50,
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
                          width: 50,
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
                          width: 50,
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
                          width: 50,
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
              child: RoundButton(title: 'Verify OTP', onPress: () {}),
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
        Positioned(
            top: 350,
            child: Image(image: AssetImage('images/Graphic_Left.png'))),
        Positioned(
            top: 500,
            right: 0,
            child: Image(image: AssetImage('images/Graphic_Right.png'))),
      ]),
    );
  }
}
