
import 'package:flutter/material.dart';
import 'package:real_state_app/core/resources/strings_manager.dart';
import '../../features/fearture_one/presentation_layer/screens/forgot_password_view.dart';
import '../../features/fearture_one/presentation_layer/screens/login_view.dart';
import '../../features/fearture_one/presentation_layer/screens/main_view.dart';
import '../../features/fearture_one/presentation_layer/screens/on_boarding_view.dart';
import '../../features/fearture_one/presentation_layer/screens/regester_view.dart';
import '../../features/fearture_one/presentation_layer/screens/splash_view.dart';
import '../../features/fearture_one/presentation_layer/screens/store_details_view.dart';




class Routes {
  static const String splashRoute = "/";
  static const String onBoardingRoute = "/onBoarding";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        //initLoginModule();
        return MaterialPageRoute(builder: (_) =>const LoginView());
      case Routes.onBoardingRoute:
        return MaterialPageRoute(builder: (_) =>const OnBoardingView());
      case Routes.registerRoute:
        //initRegisterModule();
        return MaterialPageRoute(builder: (_) =>const RegisterView());
      case Routes.forgotPasswordRoute:
       // initForgotPasswordModule();
        return MaterialPageRoute(builder: (_) =>const ForgotPasswordView());
      case Routes.mainRoute:
       // initHomeModule();
        return MaterialPageRoute(builder: (_) =>const MainView());
      case Routes.storeDetailsRoute:
        //initStoreDetailsModule();
        return MaterialPageRoute(builder: (_) =>const StoreDetailsView());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRouteFound)
                    //.tr(),
              ),
              body: Center(child: Text(AppStrings.noRouteFound)
                  //.tr()),
            )));
  }
}
