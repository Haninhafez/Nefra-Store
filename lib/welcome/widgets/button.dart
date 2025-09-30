import 'package:flutter/material.dart';

import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/home/home.dart';
import '../../../core/theme/font_style.dart';

class CustomButton extends StatefulWidget {
  final String nameButton;
  final Widget route;
  final double height;
  final double width;
  CustomButton(
      {super.key,
      required this.nameButton,
      required this.route,
      required this.height,
      required this.width});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  Route _toHome() {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 1000),
      pageBuilder: (context, animation, secondaryAnimation) => widget.route,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, _toHome());
      },
      child: Container(
        width: widget.width,
        height: widget.height,
        decoration: BoxDecoration(
          // color: ColorApp().buttonColor,
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorApp().darkGoldenRod, width: 2),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(40, 181, 181, 181).withOpacity(0.1),
              blurRadius: 5,
              offset: Offset(0, 5),
            ),
          ],
        ),
        child: Center(
          child: Text(
            "${widget.nameButton}",
            style: CusTextStyle.heading()
                .copyWith(color: ColorApp().cornsilk, fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
