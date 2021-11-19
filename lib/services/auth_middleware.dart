import 'package:get/get.dart';

import 'auth_service.dart';
import 'app_pages.dart';

class EnsureAuthMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if (!AuthService.to.isLoggedInValue) {
      return GetNavConfig.fromRoute(Routes.LOGIN);
    }
    return await super.redirectDelegate(route);
  }
}

class EnsureNotAuthedMiddleware extends GetMiddleware {
  @override
  Future<GetNavConfig?> redirectDelegate(GetNavConfig route) async {
    if (AuthService.to.isLoggedInValue) {
      return null;
    }
    return await super.redirectDelegate(route);
  }
}
