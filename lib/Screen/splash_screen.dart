import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'HomeScreen/home_screen.dart';
import 'LogIn/login.dart';

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(Duration(seconds: 2), () {
//       // if (FirebaseAuth.instance.currentUser != null) {
//       //   Get.to(HomeScreen());
//       // } else {
//       Get.to(LoginScreen());
//       // }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final m = MediaQuery.sizeOf(context);
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Center(
//               child: Positioned(
//                   top: m.height * .30,
//                   left: m.width * .2,
//                   width: m.width * .5,
//                   child: Image.asset(
//                     'images/logo-full.png',
//                     fit: BoxFit.cover,
//                   )),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isanimate = false;

  // Once signed in, return the UserCredential

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        isanimate = true;
      });
    });
  }

//
  @override
  Widget build(BuildContext context) {
    final m = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            AnimatedPositioned(
                top: m.height * .4,
                right: isanimate ? m.width * .25 : m.width * .05,
                width: m.width * .5,
                duration: const Duration(seconds: 3),
                onEnd: () {
                  Get.to(const LoginScreen());
                },
                child: Image.asset(
                  'images/logo-full.png',
                  fit: BoxFit.cover,
                )),
            // Positioned(
            //   top: m.height * .60,
            //   left: m.width * .05,
            //   width: m.width * .9,
            //   height: m.height * .07,
            //   child: Center(
            //       child: Text(
            //     'Welcome To Liqueous',
            //     style: TextStyle(
            //         color: Colors.blue,
            //         fontSize: 25,
            //         fontWeight: FontWeight.bold),
            //   )),
            // )
          ],
        ),
      ),
    );
  }
}
