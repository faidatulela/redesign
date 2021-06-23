import 'package:flutter/material.dart';
import 'package:redesign/detail/card.dart';


class ListCard extends StatelessWidget {
  const ListCard({
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

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.black12)
              )
        )
      ),

          CardStyle(
            title: "Lacoste Club",
            image: "assets/foto2.jpg", 
            price: "305 per hour"
            ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            decoration: BoxDecoration( 
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.black12)
              )
        )
      ),

          CardStyle(
            title: "Hatch End",
            image: "assets/60158.jpg", 
            price: "255 per hour"
            ),

        ],
      ),
    );
  }
}