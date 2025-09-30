import 'package:flutter/material.dart';
import 'package:shoping_app_sm/auth/screen/sign_in.dart';
import 'package:shoping_app_sm/auth/widget/dialogs.dart';
import 'package:shoping_app_sm/auth/widget/email.dart';
import 'package:shoping_app_sm/auth/widget/full_name.dart';
import 'package:shoping_app_sm/auth/widget/password.dart';
import 'package:shoping_app_sm/auth/widget/to_another_page.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';

import 'package:shoping_app_sm/core/theme/font_style.dart';

class SignUp extends StatelessWidget {
  SignUp({super.key});
  final _formKey = GlobalKey<FormState>();
  TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Text(
                  "Create your Account",
                  style: CusTextStyle.heading()
                      .copyWith(fontSize: 30, color: ColorApp().cornsilk),
                ),
                const SizedBox(
                  height: 30,
                ),
                const FullNameTextForm(),
                const SizedBox(
                  height: 30,
                ),
                const EmailTextForm(),
                const SizedBox(
                  height: 30,
                ),
                PasswordTextForm(
                  password: _password,
                ),
                const SizedBox(
                  height: 30,
                ),
                ConfirmPassword(passwordwillConfrimed: _password),
                SizedBox(
                  height: 80,
                ),
                ButtonToHome(
                  formKey: _formKey,
                  greating: 'Account Created Successfully!',
                  textInButton: 'Create a account',
                ),
                ToAnotherPage(Message: "Do you have account", goto: SignIn())
              ],
            ),
          ),
        ),
      ),
    );
  }
}
