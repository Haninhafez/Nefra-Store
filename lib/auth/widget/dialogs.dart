import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';
import 'package:shoping_app_sm/home/home.dart';

class ButtonToHome extends StatefulWidget {
  final GlobalKey<FormState> formKey;
  final String textInButton;
  final String greating;
  ButtonToHome(
      {super.key,
      required this.formKey,
      required this.greating,
      required this.textInButton});

  @override
  State<ButtonToHome> createState() => _ButtonToHomeState();
}

Route _toHome() {
  return PageRouteBuilder(
    transitionDuration: const Duration(microseconds: 1000),
    pageBuilder: (context, animation, secondaryAnimation) => const HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}

void _goToHome(BuildContext context) {
  Navigator.pop(context);
  Navigator.push(context, _toHome());
}

class _ButtonToHomeState extends State<ButtonToHome> {
  Future<void> _dialogs() async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          Future.delayed(const Duration(seconds: 4), () {
            _goToHome(context);
          });
          return AlertDialog(
            title: Text(
              widget.greating,
              style: CusTextStyle.heading()
                  .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            content: const Text(
              "Welcome to Nefra Store!\n You can now start exploring our premium products.",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: const Color.fromARGB(255, 39, 39, 39),
            shadowColor: ColorApp().frameAmber.withOpacity(.2),
            actions: [
              TextButton(
                  onPressed: () {
                    _goToHome(context);
                  },
                  child: const Text(
                    "Ok",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.formKey.currentState!.validate()) {
          _dialogs();
        }
      },
      child: Container(
        width: 280,
        height: 50,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: ColorApp().darkGoldenRod, width: 2),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(40, 181, 181, 181).withOpacity(0.1),
              blurRadius: 5,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          widget.textInButton,
          style: CusTextStyle.heading().copyWith(color: ColorApp().cornsilk),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
