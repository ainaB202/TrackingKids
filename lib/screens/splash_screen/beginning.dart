import 'package:flutter/material.dart';
import 'package:nursery_app/screens/login_screen/login_screen.dart';

import '../login_screen/login_screenTh.dart';

class Beginning extends StatelessWidget {
  const Beginning({Key? key}) : super(key: key);
  static String routeName = 'Beginning';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow,
        appBar: AppBar(),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color.fromARGB(255, 227, 242, 249),
              backgroundImage: const AssetImage('images/photo.png'),
              child: Container(
                height: 150,
                width: 150,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(shape: BoxShape.circle),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: const Text(
                    'Parents',
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreenTh.routeName);
                  },
                  child: const Text(
                    'Teacher',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

          // Center(
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       TextButton(
          //         onPressed: () => null,
          //         child: Text("parents".toUpperCase(),
          //             style: const TextStyle(fontSize: 14)),
          //         style: ButtonStyle(
          //             foregroundColor:
          //                 MaterialStateProperty.all<Color>(Colors.white),
          //             backgroundColor:
          //                 MaterialStateProperty.all<Color>(Colors.blue),
          //             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          //                 const RoundedRectangleBorder(
          //               borderRadius: BorderRadius.zero,
          //               side: BorderSide(color: Color(0xFFF7EBEB)),
          //             ))),
          //       ),
          //       TextButton(
          //           onPressed: () => null,
          //           child: Text("Teacher".toUpperCase(),
          //               style: const TextStyle(fontSize: 14)),
          //           style: ButtonStyle(
          //               foregroundColor:
          //                   MaterialStateProperty.all<Color>(Colors.white),
          //               backgroundColor:
          //                   MaterialStateProperty.all<Color>(Colors.blue),
          //               shape:
          //                   MaterialStateProperty.all<RoundedRectangleBorder>(
          //                       const RoundedRectangleBorder(
          //                           borderRadius: BorderRadius.zero,
          //                           side: BorderSide(
          //                               color: Color.fromARGB(
          //                                   255, 238, 244, 245)))))),
          //     ],
          //   ),
          // ),
