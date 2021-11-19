import 'package:get/get.dart';
import 'package:repair/modules/home/home_view.dart';
import 'package:repair/modules/login/login_view.dart';
import 'package:repair/modules/profile/profile_view.dart';
import 'package:repair/modules/settings/settings_view.dart';

import 'auth_middleware.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      participatesInRootNavigator: true,
      preventDuplicates: true,
      children: [
        GetPage(
          middlewares: [
            EnsureNotAuthedMiddleware(),
          ],
          name: Routes.LOGIN,
          page: () => const LoginView(),
        ),
        GetPage(
          name: Routes.PROFILE,
          page: () => const ProfileView(),
        ),
        GetPage(
          name: Routes.SETTINGS,
          page: () => const SettingsView(),
        ),
      ],
    ),
  ];
}
