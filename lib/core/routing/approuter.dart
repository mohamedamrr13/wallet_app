import 'package:go_router/go_router.dart';
import 'package:wallet_app/features/authentication/presentation/views/login_view.dart';
import 'package:wallet_app/features/authentication/presentation/views/register_view.dart';

class AppRouter {
  static const loginView = '/loginView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(
        path: loginView,
        builder: (context, state) => const LoginView(),
      ),
    ],
  );
}
