import 'package:build_resume/pages/home_profile.dart';
import 'package:build_resume/pages/login_page.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/route_middleware.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

appRoutes() => [
      GetPage(
        name: '/home',
        page: () => HomeProfile(),
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      GetPage(
        name: '/login',
        page: () => LoginPage(),
        middlewares: [MyMiddelware()],
        transition: Transition.leftToRightWithFade,
        transitionDuration: Duration(milliseconds: 500),
      ),
      // GetPage(
      //   name: '/third',
      //   page: () => ThirdPage(),
      //   middlewares: [MyMiddelware()],
      //   transition: Transition.leftToRightWithFade,
      //   transitionDuration: Duration(milliseconds: 500),
      // ),
    ];

class MyMiddelware extends GetMiddleware {
  @override
  GetPage? onPageCalled(GetPage? page) {
    print(page?.name);
    return super.onPageCalled(page);
  }
}
