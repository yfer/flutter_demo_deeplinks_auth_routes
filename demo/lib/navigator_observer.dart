import 'dart:developer';

import 'package:flutter/widgets.dart';

class LogNavigatorObserver extends NavigatorObserver{
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
    log('didPush');
  }
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
    log('didPop');
  }
  @override
  void didRemove(Route route, Route? previousRoute) {
    super.didRemove(route, previousRoute);
    log('didRemove');
  }
  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    log('didReplace');
  }
  @override
  void didStartUserGesture(Route route, Route? previousRoute) {
    log('didStartUserGesture');
  }
  @override
  void didStopUserGesture() {
    super.didStopUserGesture();
    log('didStopUserGesture');
  }
}