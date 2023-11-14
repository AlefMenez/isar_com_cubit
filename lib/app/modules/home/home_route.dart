 import 'package:flutter/material.dart';
import 'package:isar_com_cubit/app/modules/home/cubit/home_cubit.dart';
import 'package:isar_com_cubit/app/modules/home/home_page.dart';

import 'package:provider/provider.dart';

class HomeRoute {
  Widget page(BuildContext context) {
    return MultiProvider(providers: [
      Provider(create: (context) => HomeCubit(),)
    ], builder: (context, child) => HomePage(controller: context.read(),));
    
  }
}