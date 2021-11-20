import 'package:get/get.dart';
import 'package:gardening/modules/home/home_binding.dart';
import 'package:gardening/modules/home/home_view.dart';
import 'package:gardening/modules/login/login_binding.dart';
import 'package:gardening/modules/login/login_view.dart';
import 'package:gardening/modules/profile/profile_binding.dart';
import 'package:gardening/modules/profile/profile_view.dart';
import 'package:gardening/modules/settings/settings_binding.dart';
import 'package:gardening/modules/settings/settings_view.dart';

import 'auth_middleware.dart';
part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;
  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomeView(),
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
          middlewares: [
            EnsureAuthMiddleware(),
          ],
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
