import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';

class FullNameTextForm extends StatefulWidget {
  const FullNameTextForm({super.key});

  @override
  State<FullNameTextForm> createState() => _nameState();
}

class _nameState extends State<FullNameTextForm> {
  TextEditingController _name = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _name,
      style: CusTextStyle.heading().copyWith(
          color: Color.fromARGB(221, 255, 255, 255),
          fontSize: 20,
          fontWeight: FontWeight.w500),
      cursorRadius: const Radius.circular(15),
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color.fromARGB(255, 255, 255, 255).withOpacity(.09),
        labelText: "Full Name",
        labelStyle: CusTextStyle.heading()
            .copyWith(fontSize: 24, color: ColorApp().primeTextColor),
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
          return "Enter your full name";
        }
        List<String> words = value.trim().split(" ");
        for (var i in words) {
          if (i.isEmpty) continue;
          String firstChar = i[0];
          if (firstChar != firstChar.toUpperCase())
            return "Each word must start with a capital letter ";
        }
        return null;
      },
    );
  }
}
