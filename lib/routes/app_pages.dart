import 'package:crypto_ui/modules/introduction/introduction_binding.dart';
import 'package:crypto_ui/modules/introduction/introduction_view.dart';
import 'package:crypto_ui/modules/signin/signin_binding.dart';
import 'package:crypto_ui/modules/signin/signin_view.dart';
import 'package:crypto_ui/modules/signup/signup_binding.dart';
import 'package:crypto_ui/modules/signup/signup_view.dart';
import 'package:crypto_ui/modules/splash/splash_binding.dart';
import 'package:crypto_ui/modules/splash/splash_view.dart';
import 'package:crypto_ui/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages{
  static const INITIAL =AppRoutes.SPLASH;

  static final pages = [
    GetPage(
        name: AppRoutes.SPLASH,
        page: () => const SplashPage(),
        bindings: [
          SplashBinding(),
        ]
    ),
    GetPage(
        name: AppRoutes.INTRODUCTION,
        page: () => const IntroductionPage(),
        bindings: [
          IntroductionBinding(),
        ]
    ),
    GetPage(
        name: AppRoutes.SIGNIN,
        page: () => const SigninPage(),
        bindings: [
          SigninBinding(),
        ]
    ),
    GetPage(
        name: AppRoutes.SIGNUP,
        page: () => const SignupPage(),
        bindings: [
          SignupBinding(),
        ]
    ),
  ];

}