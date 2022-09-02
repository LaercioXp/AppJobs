import 'package:flutter/material.dart';
import 'package:jobs/src/pages/register_page.dart';
import 'package:nuvigator/next.dart';

class RegisterRoute extends NuRoute{

  @override
  String get path => 'register';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return RegisterPage(
      //onHomeClick: (parameters) => nuvigator.open('home', parameters: parameters),
    );
  }


}