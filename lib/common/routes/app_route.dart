import 'package:auto_route/auto_route.dart';
import 'package:messanger/auth/presentation/pages/sign_in_page.dart';
import 'package:messanger/auth/presentation/pages/sign_up_page.dart';
import 'package:messanger/common/routes/route_path.dart';
import 'package:messanger/home/presentation/pages/home.dart';
import 'package:messanger/messanger/presentation/pages/messanger.dart';
import 'package:messanger/product/presentation/pages/product_list_page.dart';

part 'app_route.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignInRoute.page,
          path: RoutePath.splash,
          initial: true,
        ),
        AutoRoute(
          page: SignUpRoute.page,
          path: RoutePath.signUp,
        ),
        AutoRoute(
          page: ProductListRoute.page,
          path: RoutePath.product,
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: RoutePath.home,
        ),
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
