import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';

class EmailTextForm extends StatefulWidget {
  const EmailTextForm({super.key});

  @override
  State<EmailTextForm> createState() => _EmailTextFormState();
}

class _EmailTextFormState extends State<EmailTextForm> {
  TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _email,
      style: CusTextStyle.heading().copyWith(
          color: Color.fromARGB(221, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      cursorRadius: const Radius.circular(15),
      decoration: InputDecoration(
        labelText: "Email",
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
        if (value == null || value.isEmpty) return "Fill Eamil field";

        if (!value.contains("@gmail.com")) return "Write Email in Right format";
        return null;
      },
    );
  }
}
