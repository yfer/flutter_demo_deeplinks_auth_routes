// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:demo/auth_guard.dart' as _i3;
import 'package:demo/auth_page.dart' as _i4;
import 'package:demo/deeplink_page.dart' as _i7;
import 'package:demo/home_page.dart' as _i6;
import 'package:demo/some_page.dart' as _i5;
import 'package:flutter/material.dart' as _i2;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    AuthRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.AuthPage();
        }),
    SomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.SomePage();
        }),
    HomeRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i6.HomePage();
        }),
    DeeplinkRoute.name: (routeData) => _i1.AdaptivePage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i7.DeeplinkPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(AuthRoute.name, path: '/auth'),
        _i1.RouteConfig(SomeRoute.name, path: '/some'),
        _i1.RouteConfig(HomeRoute.name, path: '/'),
        _i1.RouteConfig(DeeplinkRoute.name,
            path: '/deeplink', guards: [authGuard])
      ];
}

class AuthRoute extends _i1.PageRouteInfo {
  const AuthRoute() : super(name, path: '/auth');

  static const String name = 'AuthRoute';
}

class SomeRoute extends _i1.PageRouteInfo {
  const SomeRoute() : super(name, path: '/some');

  static const String name = 'SomeRoute';
}

class HomeRoute extends _i1.PageRouteInfo {
  const HomeRoute() : super(name, path: '/');

  static const String name = 'HomeRoute';
}

class DeeplinkRoute extends _i1.PageRouteInfo {
  const DeeplinkRoute() : super(name, path: '/deeplink');

  static const String name = 'DeeplinkRoute';
}
