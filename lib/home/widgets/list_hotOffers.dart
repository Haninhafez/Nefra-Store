import 'package:flutter/material.dart';
import 'package:shoping_app_sm/home/modal/hot_offers.dart';
import 'package:shoping_app_sm/home/widgets/hotOffer_item.dart';

class ListHotoffers extends StatelessWidget {
  const ListHotoffers({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: offers.length,
        itemBuilder: (BuildContext, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: HotofferItem(
              title: offers[index]['title']!,
              description: offers[index]['subtitle']!,
              tag: offers[index]["tag"]!,
            ),
          );
        });
  }
}
