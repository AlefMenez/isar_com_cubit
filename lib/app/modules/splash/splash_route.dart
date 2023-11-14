import 'package:flutter/material.dart';
import 'package:isar_com_cubit/app/modules/splash/cubit/splash_cubit.dart';
import 'package:isar_com_cubit/app/modules/splash/splash_page.dart';
import 'package:provider/provider.dart';

class SplashRoute {
  Widget page(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context) => SplashCubit(),)
    ], builder: (context, child) => SplashPage(controller: context.read(),));
    
  }
}
