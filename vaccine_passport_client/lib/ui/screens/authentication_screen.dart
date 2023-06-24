import 'dart:math';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../../data/providers/vaccine_passport_provider.dart';

import '../widgets/widgets.dart';
import '../screens/screens.dart';

class AuthenticationScreen extends StatefulWidget {
  static const String route = '/authentication-screen';

  const AuthenticationScreen({Key? key}) : super(key: key);

  @override
  _AuthenticationScreenState createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  var _credential = {};
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 600,
          width: 500,
          child: Form(
            key: _key,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.alternate_email_rounded),
                    ),
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Required';
                      }
                    },
                    onSaved: (input) {
                      _credential['email'] = input;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 20,
                    horizontal: 10,
                  ),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Password',
                      prefixIcon: Icon(Icons.lock_rounded),
                      suffixIcon: Icon(Icons.visibility_rounded),
                    ),
                    validator: (input) {
                      if (input!.isEmpty) {
                        return 'Required';
                      }
                    },
                    onSaved: (input) {
                      _credential['password'] = input;
                    },
                  ),
                ),
                Consumer<VaccinePassportProvider>(
                  builder: (context, data, _) {
                    return GradientButton(
                      label: 'SIGN IN',
                      icon: Icons.vpn_key_rounded,
                      onTap: () {
                        // data.signUp(
                        //   email: _credential['email'],
                        //   password: _credential['password'],
                        //   data: {
                        //     'First Name': 'Ravi',
                        //     'Last Name': 'Kansagara',
                        //   },
                        // );

                        _key.currentState!.save();
                        if (_key.currentState!.validate()) {
                          data
                              .signIn(
                                email: _credential['email'],
                                password: _credential['password'],
                              )
                              .then(
                                (value) => Navigator.pushReplacementNamed(
                                    context, HomeScreen.route),
                              );
                          print(data.userInfo.first);
                        }
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
