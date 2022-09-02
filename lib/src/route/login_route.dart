import 'package:flutter/material.dart';
import 'package:jobs/src/pages/login_page.dart';
import 'package:nuvigator/next.dart';

class LoginRoute extends NuRoute{

  @override
  String get path => 'login';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return LoginPage(
      onHomeClick: () => nuvigator.open('home'),
    );
  }


}