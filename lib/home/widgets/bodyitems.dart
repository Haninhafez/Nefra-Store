import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';
import 'package:shoping_app_sm/home/widgets/list_hotOffers.dart';
import 'package:shoping_app_sm/home/widgets/list_item_card.dart';

class Bodyitems extends StatelessWidget {
  const Bodyitems({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        children: [
          ListItemCard(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "Hot Offers",
                style: CusTextStyle.heading()
                    .copyWith(color: Color.fromARGB(255, 218, 159, 32)),
              ),
            ),
          ),
          ListHotoffers(),
        ],
      ),
    );
  }
}
