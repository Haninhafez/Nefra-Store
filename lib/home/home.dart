import 'package:flutter/material.dart';
import 'package:shoping_app_sm/core/theme/font_style.dart';
import 'package:shoping_app_sm/home/widgets/bodyitems.dart';
import 'package:shoping_app_sm/home/widgets/image_slider.dart';
import 'package:shoping_app_sm/home/widgets/list_hotOffers.dart';
import 'package:shoping_app_sm/home/widgets/list_item_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text(
            "Our Products",
            style: CusTextStyle.heading(),
          ),
          backgroundColor: Colors.grey.shade800.withOpacity(.4),
          centerTitle: true,
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: ImageSlider()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 5,
              ),
            ),
            Bodyitems(),
          ],
        ));
  }
}
