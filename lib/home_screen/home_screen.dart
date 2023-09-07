// import 'dart:';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nursery_app/constants.dart';
import 'package:nursery_app/home_screen/my%20profile/my_profile.dart';
import 'package:nursery_app/home_screen/widgets/student_data.dart';

import '../screens/form_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String routeName = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 2.5,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    StudentName(studentName: 'zainab'),
                    kHalfSizedBox,
                    StudentYear(studentYear: '2022-2023'),
                  ],
                ),
                kHalfSizedBox,
                StudentPicture(
                    picAddress: 'images/pro.jpg',
                    onPress: () {
                      Navigator.pushNamed(context, MyProfileScreen.routeName);
                    }),
              ],
            ),
            sizedBox,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                StudentDataCard(
                  onPress: () {
                    //go to screen Attendance
                  },
                  title: 'Attendance',
                  value: '90.02',
                ),
              ],
            )
          ]),
        ),
        Expanded(
          child: Container(
            color: Colors.transparent,
            child: Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: kOtherColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(kDefaultPadding * 3),
                  topRight: Radius.circular(kDefaultPadding * 3),
                ),
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {
                            Navigator.pushNamed(context, FormScreen.routeName);
                          },
                          icon: 'assets/icons/add (2).svg',
                          title: 'Add'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/notification (2).svg',
                          title: 'Notification'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/change.svg',
                          title: 'Change password'),
                      HomeCard(
                          onPress: () {},
                          icon: 'assets/icons/logout.svg',
                          title: 'Logout'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class HomeCard extends StatelessWidget {
  const HomeCard(
      {Key? key,
      required this.onPress,
      required this.icon,
      required this.title})
      : super(key: key);
  final VoidCallback onPress;
  final String icon;
  final String title;
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.only(top: kDefaultPadding / 2),
          width: MediaQuery.of(context).size.width / 2.5,
          height: MediaQuery.of(context).size.height / 6,
          decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(kDefaultPadding / 2),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  icon,
                  width: 40.0,
                  height: 40.0,
                  color: kOtherColor,
                ),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.subtitle2,
                ),
                const SizedBox(
                  height: kDefaultPadding / 3,
                )
              ]),
        ));
  }
}
