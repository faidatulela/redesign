import 'package:flutter/material.dart';
import 'package:redesign/detail/card.dart';


class Detail extends StatelessWidget {
  const Detail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      child: Column(
        children:<Widget> [
          CardStyle(
            title: "Zenith Tennis Center",
            image: "assets/60158.jpg", 
            price: "155 per hour"
            ),
        ],
      ),
    );
  }
}