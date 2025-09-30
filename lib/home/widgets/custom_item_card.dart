import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';

class CustomItemCard extends StatelessWidget {
  final String image;
  final String price;
  final String title;
  const CustomItemCard(
      {super.key,
      required this.image,
      required this.price,
      required this.title});

  @override
  Widget build(BuildContext context) {
    void customSnakeBar() {
      SnackBar snackBar = const SnackBar(
        content: Text(
          "Item added to cart",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        duration: Duration(seconds: 2),
      );

      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }

    return Stack(children: [
      Container(
        width: 200,
        height: 260,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 236, 236, 221).withOpacity(.2),
            borderRadius: BorderRadius.circular(10)),
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Image.asset(
          "$image",
          width: 200,
          height: 150,
          fit: BoxFit.fill,
        ),
      ),
      Positioned(
          top: 10,
          left: 150,
          child: GestureDetector(
            onTap: customSnakeBar,
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.4),
                  borderRadius: BorderRadius.circular(15)),
              child: const Icon(
                CupertinoIcons.cart_fill,
                color: Color.fromARGB(255, 254, 249, 243),
              ),
            ),
          )),
      Positioned(
        bottom: 2,
        right: 5,
        left: 5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "$title",
              style: CusTextStyle.productTitle().copyWith(
                  fontWeight: FontWeight.bold, color: ColorApp().cornsilk),
              maxLines: 1,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              " $price  ",
              style: CusTextStyle.productTitle().copyWith(
                  fontWeight: FontWeight.w600, color: ColorApp().cornsilk),
            ),
          ],
        ),
      )
    ]);
  }
}
