import 'package:auto_route/auto_route.dart';
import 'router.gr.dart';

bool isAuth = false;

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    if (!isAuth) {
      await router.removeUntil((route) => route.name != AuthRoute.name);
      await router.push(AuthRoute());
    }
    resolver.next(true);
  }
}
