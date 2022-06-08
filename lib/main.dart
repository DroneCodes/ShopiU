import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:moni_test/home.dart';
import 'package:moni_test/pages/authentication/auth.dart';
import 'package:moni_test/pages/home_page.dart';
import 'package:moni_test/pages/status/user_status.dart';
import 'package:moni_test/pages/wrapper.dart';
import 'package:provider/provider.dart';


 void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MoniTest());
}

class MoniTest extends StatelessWidget {


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthService>(
          create: (_) => AuthService(),
        ),
      ],
      child: MaterialApp(
          title: "ShopiU",
          debugShowCheckedModeBanner: false,
          initialRoute: '/',
          routes: {
            '/': (context) => Home(),
            '//': (context) => UserStatus(),
            '///': (context) => Wrapper(),
          },
        ),
    );
  }
}

