import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'package:nursery_app/screens/splash_screen/beginning.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String routeName = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(
          context, Beginning.routeName, (route) => false);
    });
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tracking',
                  // ignore: deprecated_member_use
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: Colors.white,
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      letterSpacing: 2.0),
                ),
                Text(
                  ' Kids',
                  style: GoogleFonts.pattaya(
                      fontSize: 50.0,
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Image.asset(
              'images/photo.png',
              height: 150.0,
              width: 150.0,
            )
          ],
        ),
      ),
    );
  }
}
