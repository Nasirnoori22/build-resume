// import 'package:get/get_navigation/src/routes/get_route.dart';
// import 'package:get/get_navigation/src/routes/transitions_type.dart';

// import '../bindings/home_binding.dart';
// import '../bindings/login_binding.dart';
// import '../pages/home_profile.dart';
// import '../pages/login_page.dart';
// import '../pages/welcome_page.dart';
// part 'app_routes.dart';


// class AppPages {
//   AppPages._();

//   static const INITIAL = Routes.HOME;

//   static final routes = [
//     GetPage(
//       name: _Paths.LOGIN,
//       page: () => LoginPage(),
//       binding: LoginBinding(),
//       transition: Transition.fadeIn,
//       transitionDuration: Duration(milliseconds: 500),
//     ),
//     GetPage(
//       name: _Paths.HOME,
//       page: () => HomeProfile(),
//       binding: HomeBinding(),
//       transition: Transition.fadeIn,
//       transitionDuration: Duration(milliseconds: 500),
//     ),
//     GetPage(
//       name: _Paths.WELCOME,
//       page: () => WelcomeView(),
//       binding: WelcomeBinding(),
//       transition: Transition.fadeIn,
//       transitionDuration: Duration(milliseconds: 500),
//     ),
//   ];
// }