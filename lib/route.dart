import 'package:flutter/material.dart';
import 'package:jobs/src/route/conta_bancaria_route.dart';
import 'package:jobs/src/route/helcome_route.dart';
import 'package:jobs/src/route/home_route.dart';
import 'package:jobs/src/route/login_route.dart';
import 'package:jobs/src/route/perfil_route.dart';
import 'package:jobs/src/route/register_route.dart';
import 'package:nuvigator/next.dart';

class MyRouter extends NuRouter {
  @override
  String get initialRoute => 'bem-vindo';

  @override
  List<NuRoute> get registerRoutes => [
    LoginRoute(),
    HomeRoute(),
    HelcomeRoute(),
    PerfilRoute(),
    RegisterRoute(),
    ContaBancariaRoute(),
  ];
}

// Render
Widget build(BuildContext context) {
  return Nuvigator(
    router: MyRouter(),
  );
}