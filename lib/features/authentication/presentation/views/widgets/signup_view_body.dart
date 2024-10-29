import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/routing/approuter.dart';
import 'package:wallet_app/features/authentication/data/models/user_model.dart';
import 'package:wallet_app/features/authentication/presentation/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/signup_title_section.dart';
import 'package:wallet_app/core/widgets/shadowed_button.dart';
import 'package:wallet_app/core/widgets/submit_data_section.dart';
import 'package:wallet_app/features/authentication/presentation/views/widgets/signup_text_fields_section.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});
  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formkey = GlobalKey();

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Logged in Successfully'),
            ),
          );
          GoRouter.of(context).push(AppRouter.homeView);
        } else if (state is SignUpFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.errMessage)));
        }
      },
      builder: (context, state) {
        return Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SignUpTitleSection(),
                const ShadowedButton(),
                SignUpTextFieldSection(
                  emailController: emailController,
                  passwordController: passwordController,
                  firstNameController: firstNameController,
                  lastNameController: lastNameController,
                ),
                SubmitDataSection(
                  buttonText: 'Register',
                  title: 'You have an account ?',
                  subtitle: ' Login',
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      setState(() {});
                      BlocProvider.of<SignUpCubit>(context).signUp(
                          userModel: UserModel(
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              email: emailController.text,
                              password: passwordController.text,
                              passwordConfirm: passwordController.text));
                    }
                  },
                  onTap: () {
                    Navigator.pop(context);
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
