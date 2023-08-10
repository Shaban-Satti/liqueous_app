// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

// class DashboardScreen extends StatefulWidget {
//   const DashboardScreen({super.key});

//   @override
//   State<DashboardScreen> createState() => _DashboardScreenState();
// }

// class _DashboardScreenState extends State<DashboardScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(child: Text('DashboardScreen Scren')),
//       bottomNavigationBar: BottomAppBar(
//         elevation: 4,
//         // shape: const CircularNotchedRectangle(),
//         child: Container(
//           width: MediaQuery.sizeOf(context).width,
//           height: 100,
//           decoration: const ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(35),
//                 topRight: Radius.circular(35),
//               ),
//             ),
//             shadows: [
//               BoxShadow(
//                 color: Color(0x33000000),
//                 blurRadius: 29,
//                 offset: Offset(0, -5),
//                 spreadRadius: -7,
//               )
//             ],
//           ),
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                     width: 30,
//                   ),
//                   SvgPicture.asset(
//                     'images/svg/dashboard.svg',
//                     height: 25,
//                     //color: Colors.green,
//                   ),
//                   Text(
//                     'Dashboard',
//                     style: TextStyle(
//                       color: Color(0xFF5C96FD),
//                       fontSize: 6,
//                       fontFamily: 'Mulish',
//                       fontWeight: FontWeight.w400,
//                       letterSpacing: -0.12,
//                     ),
//                   )
//                 ],
//               ),
//               Column(
//                 children: [
//                   const SizedBox(
//                     height: 10,
//                     width: 30,
//                   ),
//                   SvgPicture.asset(
//                     'images/svg/activity.svg',
//                     height: 25,
//                     //color: Colors.green,
//                   ),
//                   const Text(
//                     'Stock Insight',
//                     style: TextStyle(
//                       color: Color(0xFFCCCCCC),
//                       fontSize: 6,
//                       fontFamily: 'Mulish',
//                       fontWeight: FontWeight.w400,
//                       letterSpacing: -0.12,
//                     ),
//                   )
//                 ],
//               ),
//               Column(
//                 children: [
//                   SizedBox(
//                     height: 10,
//                     width: 30,
//                   ),
//                   SvgPicture.asset(
//                     'images/svg/book.svg',
//                     height: 25,
//                     //color: Colors.green,
//                   ),
//                   const Text(
//                     'Support',
//                     style: TextStyle(
//                       color: Color(0xFFCCCCCC),
//                       fontSize: 6,
//                       fontFamily: 'Mulish',
//                       fontWeight: FontWeight.w400,
//                       letterSpacing: -0.12,
//                     ),
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:select_card/select_card.dart';

class MyApp extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> titles = <String>[
    'Emre Kaplan',
    'Oğuzcan',
    'Cansu',
    'Ahmet',
    "Mete",
    "Fatih Burak Kaplan ",
  ];
  final List<String> ids = <String>[
    'id-123',
    'id-134',
    'id-145',
    'id-156',
    "id-167",
    "id-178",
  ];
  final List<String> contents = <String>[
    'Lorem ipsum dolor sit amet, consectetur ',
    'Mauris vitae, tristique',
    'Volutpat convallis tellus',
    'Metus maximus sit amet.',
    "Integer tristique sodales",
    "Sed sodales lacus Metus maximus sit tristique sodales Mauris vitae, tristique"
  ];
  final List<String> imagesFromNetwork = <String>[
    'https://gravatar.com/avatar/37b27392b82a7f94676757c1c2d10273?s=400&d=robohash&r=x',
    'https://gravatar.com/avatar/36f1d92605a3bf914d94cd136d3c7ec3?s=400&d=robohash&r=x',
    'https://gravatar.com/avatar/5ef18de85860bd24b4d95f3dcd41eccb?s=400&d=robohash&r=x',
    'https://gravatar.com/avatar/ce9c78d5127331baa3c67c7f67973967?s=400&d=robohash&r=x',
    "https://gravatar.com/avatar/d7204273c98a64cf10cef68ef561e722?s=400&d=robohash&r=x",
    "https://gravatar.com/avatar/f4f5b41a89722855c614bb1ea1dacc4d?s=400&d=robohash&r=x"
  ];
  final List<String> imagesFromAsset = <String>[
    'assets/clock.png',
    'assets/clock.png',
    'assets/clock.png',
    'assets/clock.png',
    'assets/clock.png',
    'assets/clock.png',
  ];
  final Map<String, String> carMap = {
    'assets/cars/car4.png': 'automobile',
    'assets/cars/car6.png': "VIP",
    'assets/cars/car1.png': "18+1",
    'assets/cars/car3.png': "Panelvan",
    'assets/cars/car7.png': "Pick-Up",
    'assets/cars/car5.png': "SUV",
    'assets/cars/car2.png': "Other",
  };
  final Map<String, String> cakeMap = {
    'assets/cakes/cake1.png': 'Strawbery Pie',
    'assets/cakes/cake2.png': "Cheese Pie",
    'assets/cakes/cake3.png': "Donut",
    'assets/cakes/cake4.png': "Roll Cake",
    'assets/cakes/cake5.png': "Waffle",
    'assets/cakes/cake6.png': "Croissant",
  };

  String? cardGroupResult;
  String? cardGroupResult2;
  String? cardGroupResult3;
  String? singleCardResult;
  String? selectSlideResult;
  String? selectSlideResult2;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Package Control',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Package Control Example"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
//---------------------------------------------------------------------

//---------------------------------------------------------------------

//---------------------------------------------------------------------
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  "Select GROUP Card Example which returns just title even if you give id list",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              //this widget just returns title even if you give id list
              SelectGroupCard(context,
                  titles: titles,
                  ids: ids,
                  imageSourceType: ImageSourceType.network,
                  images: imagesFromNetwork,
                  contents: contents, onTap: (title) {
                debugPrint(title);
                setState(() {
                  cardGroupResult3 = title;
                });
              }),
              Result(text: cardGroupResult3),
              const Divider(
                height: 20,
                thickness: 3,
                indent: 20,
                endIndent: 20,
                color: Color.fromARGB(255, 16, 39, 189),
              ),
//---------------------------------------------------------------------
// //---------------------------------------------------------------------

// //---------------------------------------------------------------------
            ],
          ),
        ),
      ),
    );
  }
}

class Result extends StatelessWidget {
  final dynamic text;

  const Result({required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Text(
        text,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }
}
