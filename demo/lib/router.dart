import 'package:auto_route/annotations.dart';
import 'package:demo/some_page.dart';

import 'auth_guard.dart';
import 'auth_page.dart';
import 'deeplink_page.dart';
import 'home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/auth', page: AuthPage),
    AutoRoute(path: '/some', page: SomePage),
    AutoRoute(path: '/home', page: HomePage, initial: true),
    AutoRoute(path: '/deeplink', guards: [AuthGuard], page: DeeplinkPage),
  ],
)
class $AppRouter {}
