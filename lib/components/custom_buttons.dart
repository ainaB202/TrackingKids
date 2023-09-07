import 'package:flutter/material.dart';
import 'package:nursery_app/constants.dart';

class DefaultButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final IconData iconData;

  const DefaultButton(
      {Key? key,
      required this.onPress,
      required this.title,
      required this.iconData,
      kDefaultPadding,
      kOtherColor})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        padding: const EdgeInsets.only(
          left: kDefaultPadding,
          right: kDefaultPadding,
        ),
        width: double.infinity,
        height: 60.0,
        decoration: BoxDecoration(
            gradient:  LinearGradient(
              colors: const [kSecondaryColor, kPrimaryColor],
              begin: const FractionalOffset(0.0, 0.0),
              end: const FractionalOffset(0.5, 0.0),
              stops: const [0.0, 1.0],
              tileMode: TileMode.clamp,
            ),
            borderRadius: BorderRadius.circular(kDefaultPadding)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Text(
              'SIGN IN',
              // ignore: deprecated_member_use
              style: Theme.of(context).textTheme.subtitle2!.copyWith(
                    fontWeight: FontWeight.w500,
                    fontSize: 16.0,
                  ),
            ),
            const Spacer(),
            const Icon(
              Icons.arrow_forward_ios_outlined,
              size: 30.0,
              color: kOtherColor,
            )
          ],
        ),
      ),
    );
  }
}
