import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/networking/api_service.dart';
import 'package:wallet_app/features/authentication/data/repos/auth_repo.dart';
import 'package:wallet_app/features/authentication/presentation/logic/login_cubit/login_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/views/login_view.dart';
import 'package:wallet_app/features/authentication/presentation/views/signup_view.dart';

class AppRouter {
  static const signUpView = '/loginView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => BlocProvider(
            create: (context) => LoginCubit(
                  AuthRepo(ApiService()),
                ),
            child: const LoginView()),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => BlocProvider(
          create: (context) => SignUpCubit(
            AuthRepo(ApiService()),
          ),
          child: const SignUpView(),
        ),
      ),
    ],
  );
}
