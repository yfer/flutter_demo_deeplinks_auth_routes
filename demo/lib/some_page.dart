import 'package:demo/router.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:auto_route/auto_route.dart';

class SomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('SomePage page'),
            OutlinedButton(
              child: Text('Deeplink page'),
              onPressed: () {
                context.router.push(DeeplinkRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
