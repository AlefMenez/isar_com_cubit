import 'package:flutter/material.dart';
import 'package:isar_com_cubit/app/modules/home/home_route.dart';
import 'package:isar_com_cubit/app/modules/splash/splash_route.dart';

sealed class Routes {
  static Route<dynamic> routes(RouteSettings settings) {
    WidgetBuilder builder;
    switch (settings.name) {
      case '/':
        builder = SplashRoute().page;
        break;
        case '/home':
        builder = HomeRoute().page;
        break;

      default:
        throw Exception('Rota não encontrada');
    }
    return MaterialPageRoute(builder: builder, settings: settings);
  }
}
