import 'package:demo/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';

class DeeplinkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(child: Text('Deeplink page'), onPressed: () {
          context.router.push(DeeplinkRoute());
        },),
      ),
    );
  }
}
