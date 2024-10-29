import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/networking/api_service.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';
import 'package:wallet_app/features/authentication/data/repos/auth_repo.dart';
import 'package:wallet_app/features/authentication/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/views/login_view.dart';
import 'package:wallet_app/features/authentication/presentation/views/sign_up_view.dart';
import 'package:wallet_app/features/home/presentation/home_view.dart';

class AppRouter {
  static const signUpView = '/loginView';
  static const homeView = '/homeView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const LoginView(),
      ),
      GoRoute(
        path: signUpView,
        builder: (context, state) => BlocProvider(
            create: (context) => SignUpCubit(AuthRepo(ApiService())),
            child: SignUpView(
              userModel: state.extra as UserModel?,
            )),
      ),
      GoRoute(
        path: AppRouter.homeView,
        builder: (context, state) => const HomeView(),
      ),
    ],
  );
}
