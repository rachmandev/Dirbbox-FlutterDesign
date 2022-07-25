import 'package:get/get.dart';

import 'package:dirbbox/app/modules/change_password/bindings/change_password_binding.dart';
import 'package:dirbbox/app/modules/change_password/views/change_password_view.dart';
import 'package:dirbbox/app/modules/home/bindings/home_binding.dart';
import 'package:dirbbox/app/modules/home/views/home_view.dart';
import 'package:dirbbox/app/modules/login/bindings/login_binding.dart';
import 'package:dirbbox/app/modules/login/views/login_view.dart';
import 'package:dirbbox/app/modules/profile/bindings/profile_binding.dart';
import 'package:dirbbox/app/modules/profile/views/profile_view.dart';
import 'package:dirbbox/app/modules/settings/bindings/settings_binding.dart';
import 'package:dirbbox/app/modules/settings/views/settings_view.dart';
import 'package:dirbbox/app/modules/storage_details/bindings/storage_details_binding.dart';
import 'package:dirbbox/app/modules/storage_details/views/storage_details_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.SETTINGS,
      page: () => SettingsView(),
      binding: SettingsBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.STORAGE_DETAILS,
      page: () => StorageDetailsView(),
      binding: StorageDetailsBinding(),
    ),
  ];
}
