import 'package:flutter/material.dart';
import 'package:jobs/src/pages/conta_bancaria_page.dart';
import 'package:nuvigator/next.dart';

class ContaBancariaRoute extends NuRoute{

  @override
  String get path => 'register';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return ContaBancariaPage(
      onHomeClick: (parameters) => nuvigator.open('home', parameters: parameters),
    );
  }


}