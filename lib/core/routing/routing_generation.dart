import 'package:commerce_app/features/myCart/CartScreen.dart';
import 'package:go_router/go_router.dart';
import '../../features/address/AddressScreen.dart';
import '../../features/auth/RegisterScreen.dart';
import '../../features/auth/login_screen.dart';
import '../../features/main_screen/MainScreen.dart';
import '../../features/product_details/ProductScreen.dart';
import 'app_routes.dart';

class RouterGenerationConfig{
  static GoRouter goRouter =
  GoRouter(initialLocation: AppRoutes.loginScreen, routes: [
    GoRoute(
      name: AppRoutes.loginScreen,
      path: AppRoutes.loginScreen,
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      name: AppRoutes.registerScreen,
      path: AppRoutes.registerScreen,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      name: AppRoutes.mainScreen,
      path: AppRoutes.mainScreen,
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      name: AppRoutes.productScreen,
      path: AppRoutes.productScreen,
      builder: (context, state) => const ProductScreen(),
    ),
    GoRoute(
      name: AppRoutes.addressScreen,
      path: AppRoutes.addressScreen,
      builder: (context, state) => const AddressScreen(),
    ),
    GoRoute(
      name: AppRoutes.CartScreen,
      path: AppRoutes.CartScreen,
      builder: (context, state) => const CartScreen(),
    ),
  ]);
}