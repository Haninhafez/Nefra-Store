import 'package:flutter/material.dart';
import 'package:shoping_app_sm/home/modal/modal.dart';
import 'package:shoping_app_sm/home/widgets/custom_item_card.dart';

class ListItemCard extends StatelessWidget {
  const ListItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 6, mainAxisSpacing: 8),
        itemCount: products.length,
        itemBuilder: (BuildContext, index) {
          return CustomItemCard(
            image: products[index].image,
            price: products[index].price,
            title: products[index].title,
          );
        },
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
