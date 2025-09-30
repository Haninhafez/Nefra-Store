import 'package:flutter/material.dart';

//Asset Image
class AssetImageWelcome extends StatelessWidget {
  const AssetImageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: const DecorationImage(
              image: AssetImage(
                "assets/images/download (7).jpg",
              ),
              fit: BoxFit.contain)),
    );
  }
}

class NetworkImageWelcome extends StatelessWidget {
  const NetworkImageWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 250,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          image: const DecorationImage(
              image: NetworkImage(
                  'https://i.pinimg.com/736x/7b/93/d9/7b93d927727b2f21bbfbbcc6296dcd34.jpg'),
              fit: BoxFit.cover)),
      child: Text(
        "d",
        style: TextStyle(),
      ),
    );
  }
}
