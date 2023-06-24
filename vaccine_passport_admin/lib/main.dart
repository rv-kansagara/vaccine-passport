import 'package:flutter/material.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:provider/provider.dart';

import 'data/providers/providers.dart';

import 'ui/theme/theme.dart';

import 'ui/screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<VaccinePassportProvider>(
      create: (context) => VaccinePassportProvider(),
      builder: (context, _) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Vaccine Passport Registration',
          theme: theme,
          initialRoute: AuthenticationScreen.route,
          routes: {
            AuthenticationScreen.route: (context) => AuthenticationScreen(),
            HomeScreen.route: (context) => HomeScreen(),
          },
        );
      },
    );
  }
}
