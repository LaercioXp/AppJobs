import 'package:flutter/material.dart';
import 'package:jobs/src/pages/home_page.dart';
import 'package:nuvigator/next.dart';

class HomeRoute extends NuRoute{
  @override
  String get path => 'home';

  @override
  ScreenType get screenType => materialScreenType;

  @override
  Widget build(BuildContext context, NuRouteSettings<Object> settings) {
    return HomePage(
        onPerfilClick: () => nuvigator.open('perfil'),
        //onCategoriaClick: (parameters) => nuvigator.open('categoria', parameters: parameters),
        //onLojaClick: (parameters) => nuvigator.open('loja', parameters: parameters),
        //onProdutoClick: (parameters) => nuvigator.open('produto', parameters: parameters)
    );
  }
}