import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'data/providers/vaccine_passport_provider.dart';

import 'ui/theme/theme.dart';

import 'ui/screens/screens.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => VaccinePassportProvider(),
      builder: (context, _) {
        return MaterialApp(
          theme: theme,
          home: AuthenticationScreen(),
          routes: {
            AuthenticationScreen.route: (context) => AuthenticationScreen(),
            HomeScreen.route: (context) => HomeScreen(),
            ProfileDetailsScreen.route: (context) => ProfileDetailsScreen(),
            VaccineDetailsScreen.route: (context) => VaccineDetailsScreen(),
          },
        );
      },
    );
  }
}
