import 'package:flutter/material.dart';

class CardStyle extends StatelessWidget {
  final String title;
  final String image;
  final String price;
  const CardStyle({
    Key? key,
    required this.title,
    required this.image,
    required this.price,
  }) : super(key: key);
   
  @override
  Widget build(BuildContext context) {
    return Container( 
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(left: 25),
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.black12),
              borderRadius: BorderRadius.all(Radius.circular(17)),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
              )
            ),
          ),
          Expanded(
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      title,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      price,
                      style: TextStyle(color: Colors.black26, fontSize: 14
                    ),
                   )
                  )],
            ),
          ),
         ),  
      ],
    ),   
   );
 }
}
