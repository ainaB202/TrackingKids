import 'package:flutter/material.dart';

import '../../constants.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({Key? key}) : super(key: key);
  static String routeName = 'MyProfileScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Porfile'),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                  padding: const EdgeInsets.only(right: kDefaultPadding / 2),
                  child: Row(
                    children: [
                      const Icon(Icons.report_gmailerrorred_outlined),
                      kHalfWidthSizedBox,
                      Text(
                        'Report',
                        style: Theme.of(context).textTheme.subtitle2,
                      ),
                    ],
                  )),
            )
          ],
        ),
        body: Container(
          color: kOtherColor,
          child: Column(children: [
            Container(
              width: double.infinity,
              height: 150,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(kDefaultPadding * 2),
                  bottomLeft: Radius.circular(kDefaultPadding * 2),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircleAvatar(
                    maxRadius: 50.0,
                    minRadius: 50.0,
                    backgroundColor: kSecondaryColor,
                    backgroundImage: AssetImage('images/pro.jpg'),
                  ),
                  kWidthSizedBox,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('zainab',
                          style: Theme.of(context).textTheme.subtitle1!),
                      Text(
                        'class 1',
                        style: Theme.of(context).textTheme.subtitle2!.copyWith(
                              fontSize: 14.0,
                            ),
                      )
                    ],
                  )
                ],
              ),
            ),
            sizedBox,
            const ProfileDetailColumn(
                title: 'Email', value: 'zzaa76227@gmail.com'),
            const ProfileDetailColumn(title: 'First Name', value: 'zainab'),
            const ProfileDetailColumn(title: 'Last Name', value: 'Alrshydi'),
            const ProfileDetailColumn(
                title: 'Phone Number', value: '0567676789'),
          ]),
        ));
  }
}

// class ProfileDetailColum extends StatelessWidget {
//   const ProfileDetailColum({Key? key, required this.title, required this.value}) : super(key: key);
//   final  String title;
//   final String value;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.only(
//         right: kDefaultPadding/4,
//         left: kDefaultPadding/4,
//         top: kDefaultPadding /4,),
//         width: MediaQuery.of(context).size.width/2,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.end,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(
//               title,
//           style: Theme.of(context).textTheme.subtitle2!.copyWith(
//             color: kTextLightColor,
//             fontWeight: FontWeight.w600,
//             fontSize: 15.0,
//           ),),
//             Text(
//               value,
//           style: Theme.of(context).textTheme.subtitle2!.copyWith(
//             color: kTextLightColor,
//             fontWeight: FontWeight.w600,
//             fontSize: 15.0,
//           ),)
//           ],
//         ),

//     );
//   }
// }

class ProfileDetailColumn extends StatelessWidget {
  const ProfileDetailColumn(
      {Key? key, required this.title, required this.value})
      : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kTextBlackColor,
                      // fontSize: SizerUtil.deviceType == DeviceType.tablet
                      //     ? 7.0
                      //     : 11.0,
                    ),
              ),
              kHalfSizedBox,
              Text(value, style: Theme.of(context).textTheme.caption),
              kHalfSizedBox,
              const SizedBox(
                width: 92.0,
                child: Divider(
                  thickness: 1.0,
                ),
              )
            ],
          ),
          const Icon(
            Icons.lock_outline,
            size: 10.0,
          ),
        ],
      ),
    );
  }
}
