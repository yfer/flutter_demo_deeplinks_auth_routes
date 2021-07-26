import 'package:demo/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';

import 'auth_guard.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Home page'),
          OutlinedButton(
            child: Text(isAuth ? 'Logout page' : 'Login page'),
            onPressed: () async {
              if (isAuth) {
                isAuth = false;
              } else {
                context.router.push(AuthRoute());
              }
              setState(() {});
            },
          ),
          OutlinedButton(
            child: Text('Some page'),
            onPressed: () {
              context.router.push(SomeRoute());
            },
          ),
          OutlinedButton(
            child: Text('Deeplink page'),
            onPressed: () {
              context.router.push(DeeplinkRoute());
            },
          ),
        ],
      )),
    );
  }
}
