import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/colors.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';

class HotofferItem extends StatelessWidget {
  final String title;
  final String description;
  final String tag;
  const HotofferItem(
      {super.key,
      required this.title,
      required this.description,
      required this.tag});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Color.fromARGB(255, 218, 159, 32).withOpacity(.08),
            border: Border.all(color: ColorApp().antiqueGold.withOpacity(.7))),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 4),
            child: Row(
              children: [
                Column(
                  children: [
                    Text(
                      "${title}",
                      style: CusTextStyle.productTitle().copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: ColorApp().cornsilk),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "${description}",
                      style: CusTextStyle.productTitle()
                          .copyWith(color: ColorApp().cornsilk.withOpacity(.8)),
                    )
                  ],
                ),
                const Spacer(),
                GestureDetector(
                  child: Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color.fromARGB(255, 218, 159, 32).withBlue(80),
                    ),
                    child: Center(
                      child: Text(
                        "${tag}",
                        style: CusTextStyle.productTitle().copyWith(
                            fontSize: 13, fontWeight: FontWeight.w600),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
