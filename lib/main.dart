import 'package:delivery_app/auth/login_or_registor.dart';
import 'package:delivery_app/model/restorants.dart';
import 'package:delivery_app/theme/theme_providor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/login_page.dart';
void main() {
  runApp(
    MultiProvider(
      providers: [
        //theme providor
        ChangeNotifierProvider(create: (context) => ThemeProvider()),

        //restorant providor
        ChangeNotifierProvider(create: (context) => Restorants()),
      ],
      child: const MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginOrRegistor(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

