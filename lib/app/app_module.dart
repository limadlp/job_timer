import 'package:flutter_modular/flutter_modular.dart';
import 'package:job_time/app/core/database/database_impl.dart';
import 'package:job_time/app/modules/login/login_module.dart';
import 'package:job_time/app/modules/splash/splash_page.dart';
import 'package:job_time/app/services/auth/auth_service_impl.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind.lazySingleton(
          (i) => AuthServiceImpl(),
        ),
        Bind.lazySingleton((i) => DatabaseImpl()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const SplashPage(),
        ),
        ModuleRoute(
          '/login',
          module: LoginModule(),
        ),
        ModuleRoute(
          '/home',
          module: HomeModule(),
        ),
      ];
}
