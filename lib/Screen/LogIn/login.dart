import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Component/roundbutton.dart';
import 'otp_Screen.dart';

var c_name = '';
var c_img = '';
var c_code = '';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final numcontroller = TextEditingController();
  final formkey = GlobalKey<FormState>();
  Color _buttonColor = Color(0xFF5C96FD);
  Color _textColor = Colors.black;

  void _checkTextField() {
    setState(() {
      if (numcontroller.text.isNotEmpty) {
        _buttonColor = Color.fromRGBO(
          13,
          148,
          136,
          1,
        );
        _textColor = Colors.white;
      } else {
        _buttonColor = Color.fromRGBO(212, 215, 220, 1);
        _textColor = Colors.black;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false; // Prevent back navigation
      },
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 100),
              child: Positioned(
                  child: Image(image: AssetImage('images/Graphic_Left.png'))),
            ),
            Positioned(
              child: SingleChildScrollView(
                // scrollDirection: Axis.vertical,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 180,
                      ),
                      const Padding(
                          padding: EdgeInsets.all(20),
                          child: Center(
                              child: Image(
                                  image: AssetImage('images/logo-full.png')))),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 30),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          'Enter Phone Number',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 15),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: InkWell(
                              onTap: (() {
                                showCountryPicker(
                                    context: context,
                                    showPhoneCode: true,
                                    favorite: <String>['PK'],
                                    countryListTheme:
                                        const CountryListThemeData(
                                            flagSize: 30),
                                    onSelect: (Country value) {
                                      //c_name = value.displayName.toString();
                                      c_name = value.countryCode.toString();
                                      c_code = value.phoneCode.toString();
                                      print(c_code);

                                      c_img = value.flagEmoji.toString();
                                      setState(() {});
                                    });
                              }),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    //color: Colors.grey,
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all()),
                                width: 100,
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    children: [
                                      const SizedBox(width: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          //Text(c_name),
                                          Text(c_img),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            c_code,
                                          ),
                                        ],
                                      ),
                                      const Icon(
                                        Icons.arrow_drop_down,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 250,
                            height: 50,
                            child: TextFormField(
                              onChanged: (value) {
                                _checkTextField();
                              },
                              controller: numcontroller,
                              //keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.red),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RoundButton(
                            title: 'Log In',
                            onPress: () {
                              Get.to(OTPScreen());
                            }),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('New User ? '),
                          Text('Sign up',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                                //color: Color.fromRGBO(97, 168, 160, 1),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: 500,
                      )
                    ]),
              ),
            ),
            Positioned(
                top: 600,
                left: 330,
                child: Image(image: AssetImage('images/Graphic_Right.png'))),
            Positioned(
                top: 600,
                //left: 330,
                child: Image(image: AssetImage('images/Grupo.png'))),
          ],
        ),
      ),
    );
  }
}
