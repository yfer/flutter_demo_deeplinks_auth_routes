import 'package:auto_route/annotations.dart';

import 'deeplink_page.dart';
import 'home_page.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/auth', page: HomePage),
    AutoRoute(path: '/', page: HomePage, initial: true),
    AutoRoute(path: '/deeplink', page: DeeplinkPage),
  ],
)
class $AppRouter {}
