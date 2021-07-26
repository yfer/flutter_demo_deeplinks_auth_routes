import 'package:demo/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'auth_guard.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          child: Text('I' 'm authenticated on backend'),
          onPressed: () {
            isAuth = true;
            context.router.pop();
          },
        ),
      ),
    );
  }
}
