import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);
  static String routeName = 'FormScreen';
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  // FormScreenState({Key? key}) : super(key: key);
  late String _name;
  final DateTime _birthday = DateTime.now();
  late String _phoneNumber;
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  Widget _buildName() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Name'),
      validator: (value) {
        if (value!.isEmpty) {
          return 'Name is Required';
        }
        return null;
      },
      onSaved: (value) {
        _name = value!;
      },
    );
  }

  Widget _buildBirthday() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: "DATA BITH",
      ),
    );
  }

  Widget _buildPhoneNumber() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Phone number'),
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Phone number is Required';
        }

        return null;
      },
      onSaved: (value) {
        _phoneNumber = value!;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form')),
      body: Container(
        margin: const EdgeInsets.all(24),
        child: Form(
            key: _formkey,
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _buildName(),
                    _buildBirthday(),
                    _buildPhoneNumber(),
                    const SizedBox(height: 100),
                    OutlinedButton(
                      child: const Text(
                        'add',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
                      ),
                      onPressed: () {
                        if (!_formkey.currentState!.validate()) {
                          return;
                        }
                        _formkey.currentState!.save();
                        print(_name);
                        print(_birthday);
                        print(_phoneNumber);
                      },
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
