import 'package:ecommerce/logic/controllers/product_controller.dart';
import 'package:ecommerce/view/screens/auth/forgot_password_screen.dart';
import 'package:ecommerce/view/screens/auth/login_screen.dart';
import 'package:ecommerce/view/screens/auth/signup_screen.dart';
import 'package:ecommerce/view/screens/cart_screen.dart';
import 'package:ecommerce/view/screens/main_screen.dart';
import 'package:ecommerce/view/screens/payment_screen.dart';
import 'package:get/get.dart';

import '../logic/bindings/auth_binding.dart';
import '../logic/bindings/main_binding.dart';
import '../logic/bindings/product_binding.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //initialRoute
  static const welcome = Routes.welcomeScreen;
  static const mainScreen = Routes.mainScreen;
  //getPages

  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding()
    ),
    GetPage(
        name: Routes.forgotPasswordScreen,
        page: () => ForgotPassowrdScreen(),
        binding: AuthBinding()
    ),
    GetPage(
        name: Routes.mainScreen,
        page: () => MainScreen(),
        bindings: [AuthBinding(),MainBinding(),ProductBinding()]
    ),
    GetPage(
        name: Routes.cartScreen,
        page: () => CartScreen(),
        bindings: [
          AuthBinding(),
          ProductBinding(),
        ]
    ),
    GetPage(
        name: Routes.paymentScreen,
        page: () => PaymentScreen(),
        bindings: [
          AuthBinding(),
          ProductBinding(),
          MainBinding(),
        ]
    ),
  ];
}


class Routes{
  static const welcomeScreen = '/welcomeScreen';
  static const loginScreen = '/loginScreen';
  static const signUpScreen = '/signUpScreen';
  static const forgotPasswordScreen = '/forgotPasswordScreen';
  static const mainScreen = '/mainScreen';
  static const cartScreen = '/cartScreen';
  static const paymentScreen = '/paymentScreen';
}
