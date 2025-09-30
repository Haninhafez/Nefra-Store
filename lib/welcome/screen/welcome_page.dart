import 'package:flutter/material.dart';
import 'package:shoping_app_sm/auth/screen/sign_in.dart';
import 'package:shoping_app_sm/auth/screen/sign_up.dart';
import '../../../core/theme/font_style.dart';
import 'package:shoping_app_sm/welcome/widgets/button.dart';
import 'package:shoping_app_sm/welcome/widgets/image.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.translate_outlined))
        ],
        centerTitle: true,
        title: Text(
          "Nefra Store",
          style: CusTextStyle.heading(),
        ),
        backgroundColor: Colors.grey.shade800.withOpacity(.3),
      ),
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Center(
            child: Column(
          children: [
            const Row(
              children: [
                AssetImageWelcome(),
                Spacer(),
                NetworkImageWelcome(),
              ],
            ),
            const SizedBox(
              height: 150,
            ),
            CustomButton(
              nameButton: "Sign UP",
              route: SignUp(),
              height: 40,
              width: 150,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              nameButton: "Sign In",
              route: SignIn(),
              height: 40,
              width: 150,
            ),
          ],
        )),
      ),
    );
  }
}
