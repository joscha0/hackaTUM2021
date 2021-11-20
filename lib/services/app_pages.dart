import 'package:get/get.dart';
import 'package:repair/modules/home/home_binding.dart';
import 'package:repair/modules/home/home_view.dart';
import 'package:repair/modules/login/login_binding.dart';
import 'package:repair/modules/login/login_view.dart';
import 'package:repair/modules/profile/profile_binding.dart';
import 'package:repair/modules/profile/profile_view.dart';
import 'package:repair/modules/settings/settings_binding.dart';
import 'package:repair/modules/settings/settings_view.dart';

import 'auth_middleware.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
      children: [
        GetPage(
          middlewares: [
            EnsureNotAuthedMiddleware(),
          ],
          name: Routes.LOGIN,
          page: () => const LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: Routes.PROFILE,
          page: () => const ProfileView(),
          binding: ProfileBinding(),
        ),
        GetPage(
          name: Routes.SETTINGS,
          page: () => const SettingsView(),
          binding: SettingsBinding(),
        ),
      ],
    ),
  ];
}