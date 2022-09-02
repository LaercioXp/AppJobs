import 'package:flutter/material.dart';
import 'package:jobs/src/pages/perfil_page.dart';
import 'package:nuvigator/next.dart';

class PerfilRoute extends NuRoute{

  @override
  String get path => 'perfil';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return PerfilPage(
      //onHomeClick: (parameters) => nuvigator.open('home', parameters: parameters),
    );
  }


}