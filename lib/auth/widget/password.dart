import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';

class PasswordTextForm extends StatefulWidget {
  final TextEditingController password;
  PasswordTextForm({super.key, required this.password});

  @override
  State<PasswordTextForm> createState() => _PasswordTextFormState();
}

class _PasswordTextFormState extends State<PasswordTextForm> {
  bool _showPassword = true;
  void visOrNO() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.password,
      obscureText: _showPassword,
      style: CusTextStyle.heading().copyWith(
          color: Color.fromARGB(221, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      cursorRadius: const Radius.circular(15),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: visOrNO,
            icon: Icon(
              _showPassword
                  ? CupertinoIcons.eye_fill
                  : CupertinoIcons.eye_slash_fill,
              color: Colors.amber.shade100.withOpacity(.3),
            )),
        labelText: "Password",
        labelStyle: CusTextStyle.heading()
            .copyWith(fontSize: 24, color: ColorApp().primeTextColor),
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(.09),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: ColorApp().frameAmber.withOpacity(.2))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: ColorApp().frameAmber.withOpacity(.2))),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Fill password field";
        }
        if (value.length < 6) {
          return "Your password must have 6 digit";
        }

        return null;
      },
    );
  }
}

class ConfirmPassword extends StatefulWidget {
  final TextEditingController passwordwillConfrimed;
  ConfirmPassword({super.key, required this.passwordwillConfrimed});

  @override
  State<ConfirmPassword> createState() => _ConfirmPasswordState();
}

class _ConfirmPasswordState extends State<ConfirmPassword> {
  TextEditingController _confirmPassword = TextEditingController();
  bool _showPassword = true;
  void visOrNO() {
    setState(() {
      _showPassword = !_showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _showPassword,
      controller: _confirmPassword,
      style: CusTextStyle.heading().copyWith(
          color: Color.fromARGB(221, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      cursorRadius: const Radius.circular(15),
      decoration: InputDecoration(
        suffixIcon: IconButton(
            onPressed: visOrNO,
            icon: Icon(
              _showPassword
                  ? CupertinoIcons.eye_fill
                  : CupertinoIcons.eye_slash_fill,
              color: Colors.amber.shade100.withOpacity(.3),
            )),
        labelText: "Confirm Password",
        labelStyle: CusTextStyle.heading()
            .copyWith(fontSize: 24, color: ColorApp().primeTextColor),
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(.09),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: ColorApp().frameAmber.withOpacity(.2))),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide:
                BorderSide(color: ColorApp().frameAmber.withOpacity(.2))),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "Fill password field";
        }
        if (value.length < 6) {
          return "Your password must have 6 digit";
        }
        if (value != widget.passwordwillConfrimed.text) {
          return "Passwords do not match";
        }

        return null;
      },
    );
  }
}
