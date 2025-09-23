import 'package:delivery_app/services/auth/auth_gate.dart';
import 'package:delivery_app/services/auth/login_or_registor.dart';
import 'package:delivery_app/firebase_options.dart';
import 'package:delivery_app/model/restorants.dart';
import 'package:delivery_app/theme/theme_providor.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'pages/login_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);


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
      home: const AuthGate(),
      theme: Provider.of<ThemeProvider>(context).themeData,
    );
  }
}

