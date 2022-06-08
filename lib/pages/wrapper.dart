import 'package:flutter/material.dart';
import 'package:moni_test/pages/authentication/auth.dart';
import 'package:moni_test/pages/authentication/widgets/login.dart';
import 'package:moni_test/pages/status/user_status.dart';
import 'package:provider/provider.dart';

import '../home.dart';
import 'authentication/widgets/models/user_model.dart';

class Wrapper extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final authService = Provider.of<AuthService>(context);
    return StreamBuilder<User?>(
      stream: authService.user,
      builder: (_, AsyncSnapshot<User?> snapshot) {
        if (snapshot.connectionState == ConnectionState.active) {
          final User? user = snapshot.data;
          return user == null ? UserStatus() : Home();
        } else {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
