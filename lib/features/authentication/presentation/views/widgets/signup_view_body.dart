import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:wallet_app/core/helper/methods.dart';
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
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Succefully logged in'),
            ),
          );
        } else if (state is SignUpFailure) {
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SignUpTitleSection(),
                const ShadowedButton(),
                SignUpTextFieldSection(
                  firstNameController: firstNameController,
                  lastNameController: lastNameController,
                  emailController: emailController,
                  passwordController: passwordController,
                ),
                SubmitDataSection(
                  buttonText: 'Register',
                  title: 'You have an account ?',
                  subtitle: ' Login',
                  onPressed: () {
                    HelperMethods.signUpMethod(
                        context,
                        formkey,
                        firstNameController.text,
                        lastNameController.text,
                        emailController.text,
                        passwordController.text);
                  },
                  onTap: () {
                    context.pop();
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
