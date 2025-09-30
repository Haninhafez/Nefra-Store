import 'package:flutter/material.dart';
import 'package:shoping_app_sm/auth/screen/sign_up.dart';
import 'package:shoping_app_sm/auth/widget/dialogs.dart';
import 'package:shoping_app_sm/auth/widget/email.dart';
import 'package:shoping_app_sm/auth/widget/password.dart';
import 'package:shoping_app_sm/auth/widget/to_another_page.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';
import 'package:shoping_app_sm/home/home.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _password = TextEditingController();
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: Column(children: [
            const SizedBox(
              height: 100,
            ),
            Text(
              "Login to your Account",
              style: CusTextStyle.heading()
                  .copyWith(fontSize: 30, color: ColorApp().cornsilk),
            ),
            const SizedBox(
              height: 30,
            ),
            EmailTextForm(),
            const SizedBox(
              height: 30,
            ),
            PasswordTextForm(password: _password),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forget Password ?",
                      style: CusTextStyle.heading()
                          .copyWith(fontSize: 18, color: Colors.grey.shade400),
                    ))
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            ButtonToHome(
              formKey: _formKey,
              greating: "Welcome Back!",
              textInButton: 'Sign In',
            ),
            ToAnotherPage(Message: "Don't have account", goto: SignUp())
          ]),
        ),
      ),
    );
  }
}
