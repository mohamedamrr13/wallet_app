import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/helper/methods.dart';
import 'package:wallet_app/core/routing/approuter.dart';
import 'package:wallet_app/core/theming/styles.dart';
import 'package:wallet_app/features/authentication/presentation/logic/login_cubit/login_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/login_textfield_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/login_title_section.dart';
import 'package:wallet_app/core/widgets/shadowed_button.dart';
import 'package:wallet_app/core/widgets/submit_data_section.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  GlobalKey<FormState> formkey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          HelperMethods.showSnackBar(context, "You are now Logged In.");
          GoRouter.of(context).push(AppRouter.homeView);
        } else if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
            ),
          );
        }
      },
      builder: (context, state) {
        return Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const LoginTitleSection(),
                const ShadowedButton(),
                const SizedBox(height: 38),
                LoginTextfieldSection(
                    enabled: state is LoginLoading ? false : true,
                    emailController: emailController,
                    passwordController: passwordController),
                SubmitDataSection(
                  title: 'Dont have an account yet ?',
                  subtitle: ' Sign Up',
                  buttonText: state is LoginLoading
                      ? const SizedBox(
                          height: 20,
                          width: 20,
                          child: CircularProgressIndicator(
                            color: Colors.white,
                          ),
                        )
                      : const Text(
                          "Login",
                          style: Styles.textstyle18,
                        ),
                  onPressed: () {
                    HelperMethods.loginMethod(context, formkey,
                        emailController.text, passwordController.text);
                  },
                  switchOnTap: () {
                    GoRouter.of(context).push(AppRouter.signUpView);
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
