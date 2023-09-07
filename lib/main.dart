import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nursery_app/constants.dart';
import 'package:nursery_app/routes.dart';
import 'package:nursery_app/screens/splash_screen/Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get kPrimaryColor => null;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Tracking Kids',
        theme: ThemeData.light().copyWith(
            scaffoldBackgroundColor: Colors.yellow,
            primaryColor: kPrimaryColor,
            appBarTheme: AppBarTheme(
              color: kPrimaryColor,
              elevation: 0,
            ),
            textTheme:
                GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme)
                    .apply()
                    .copyWith(
                      bodyText1: const TextStyle(
                          color: kTextWhiteColor,
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold),
                      subtitle1: const TextStyle(
                          color: kTextWhiteColor,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500),
                      subtitle2: const TextStyle(
                          color: kTextWhiteColor,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300),
                    ),
            inputDecorationTheme: const InputDecorationTheme(
              //label style for formfield
              labelStyle: TextStyle(
                fontSize: 15.0,
                color: Colors.lightBlue,
                height: 0.5,
              ),
              //hint style
              hintStyle: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                height: 0.5,
              ),
              // we are using underline input border not outline
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.lightBlue,
                  width: 0.7,
                ),
              ),
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.lightBlue,
              )),
              disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                color: Colors.lightBlue,
              )),
              //on focus  change color
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 48, 7, 255),
                ),
              ),
              //color changes when user enters wring information,
              //we will use validtors for this process
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.white,
                  width: 1.2,
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color.fromARGB(255, 7, 7, 255),
                  width: 1.2,
                ),
              ),
            )),
        initialRoute: SplashScreen.routeName,
        routes: routes);
  }
}
