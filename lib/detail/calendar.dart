import 'package:flutter/material.dart';

class Calendar extends StatelessWidget {

  const Calendar({
    Key? key,
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
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(17),
              ),
            ),
            child: Icon(
              Icons.location_pin,
              size: 30,
              color: Colors.white,
            ),
          ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "Washington DC",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text(
                      "129 Oakway Lane",
                      style: TextStyle(color: Colors.black26, fontSize: 14
                    ),
                   )
                  )],
            ),
          ),
      ],
    ),   
   );
 }
}
