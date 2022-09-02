import 'package:flutter/material.dart';
import 'package:jobs/src/pages/helcome_page.dart';
import 'package:nuvigator/next.dart';


class HelcomeRoute extends NuRoute{
  @override
  String get path => 'bem-vindo';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return BemVindoPage(
      onLoginClick: () => nuvigator.open('login'),
      onHomeClick: () => nuvigator.open('home'),
    );
  }
}