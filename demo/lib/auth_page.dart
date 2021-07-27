import 'package:demo/router.gr.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/services.dart';
import 'package:local_auth/local_auth.dart';
import 'package:local_auth/error_codes.dart' as auth_error;
import 'auth_guard.dart';

class AuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: OutlinedButton(
          child: Text('I' 'm authenticated on backend'),
          onPressed: () async {
            try {
              var local_auth = LocalAuthentication();
              var supported = await local_auth.isDeviceSupported();
              bool didAuthenticate = await local_auth.authenticate(
                  stickyAuth: true,
                  useErrorDialogs: true,
                  localizedReason:
                      'Please authenticate to show account balance');
              isAuth = didAuthenticate;
            } on PlatformException catch (e) {
              if (e.code == auth_error.notAvailable) {
                var d =1;
              }
            }
            if (isAuth) {
              context.router.pop();
            }
          },
        ),
      ),
    );
  }
}
