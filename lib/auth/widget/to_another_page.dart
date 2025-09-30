import 'package:flutter/material.dart';
import 'package:shoping_app_sm/auth/screen/sign_in.dart';
import 'package:shoping_app_sm/auth/screen/sign_up.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';

class ToAnotherPage extends StatefulWidget {
  final String Message;
  final Widget goto;

  const ToAnotherPage({super.key, required this.Message, required this.goto});

  @override
  State<ToAnotherPage> createState() => _ToAnotherPageState();
}

class _ToAnotherPageState extends State<ToAnotherPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(
          height: 70,
          color: Colors.white.withOpacity(.3),
          thickness: 1.5,
          indent: 10,
          endIndent: 10,
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.Message,
              style: CusTextStyle.heading()
                  .copyWith(fontSize: 18, color: Colors.grey.shade300),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => widget.goto));
              },
              child: Text(
                widget.goto.toString(),
                style: CusTextStyle.heading().copyWith(
                    fontSize: 18,
                    color: ColorApp().buttonColor,
                    decoration: TextDecoration.underline,
                    decorationColor: ColorApp().buttonColor,
                    decorationThickness: 2),
              ),
            )
          ],
        )
      ],
    );
  }
}
