import 'package:demo/router.gr.dart';
import 'package:flutter/material.dart';

import 'auth_guard.dart';
import 'navigator_observer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _appRouter =
      AppRouter(authGuard: AuthGuard());

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: _appRouter.delegate(
          navigatorObservers: () => [LogNavigatorObserver()]),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
