import 'package:flutter/material.dart';
import 'package:nursery_app/home_screen/home_screen.dart';
import '../../components/custom_buttons.dart';
import '../../constants.dart';

late bool _passwordVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  //validate our form now
  final _formkety = GlobalKey<FormState>();
  //changes current state
  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  get kDefaultPadding => null;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //when user taps anywhere on the screen,keyboard hides
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
          body: ListView(
        children: [
          //divide the body into two half
          Container(
            //use madie query in order to fit all screen sizes in same manner
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2.8,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'images/photo.png',
                    height: 150.0,
                    width: 150.0,
                  ),
                  SizedBox(height: kDefaultPadding),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Hi ',
                          style:
                              Theme.of(context).textTheme.bodyText1!.copyWith(
                                    fontWeight: FontWeight.w400,
                                  )),
                      Text('Student',
                          style: Theme.of(context).textTheme.bodyText1),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text('Sign in to continue',
                      style: Theme.of(context).textTheme.subtitle2),
                ]),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: kDefaultPadding,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  // topLeft: Radius.circular(kDefaultPadding * 3),
                  // topRight: Radius.circular(kDefaultPadding * 3),

                  ),
              color: kOtherColor,
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0, right: 5.0),
              child: Column(children: [
                Form(
                    key: _formkety,
                    child: Column(
                      children: [
                        sizedBox,
                        buildEmailField(),
                        sizedBox,
                        buildPasswordField(),
                        sizedBox,
                        DefaultButton(
                            onPress: () {
                              if (_formkety.currentState!.validate()) {
                                Navigator.pushNamedAndRemoveUntil(context,
                                    HomeScreen.routeName, (route) => false);
                              }
                            },
                            title: 'SIGN IN',
                            iconData: Icons.arrow_forward_outlined),
                        sizedBox,
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Forgot password',
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 15.0,
                            ),
                          ),
                        )
                      ],
                    )),
              ]),
            ),
          )
        ],
      )),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: const InputDecoration(
        labelText: 'Mobile number/Email',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return 'Please enter some text';
        } else if (!regExp.hasMatch(value)) {
          return 'Please enter a valid email address';
        }
        return null;
      },
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      obscureText: _passwordVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 17.0,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'password',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passwordVisible = !_passwordVisible;
            });
          },
          icon: Icon(_passwordVisible
              ? Icons.visibility_off_outlined
              : Icons.visibility_off_outlined),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return 'Must be more than 5 characters';
        }
        return null;
      },
    );
  }
}
