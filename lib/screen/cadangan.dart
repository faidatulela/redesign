import 'package:flutter/material.dart';
import 'package:redesign/detail/detail.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreen createState()=> _SecondScreen();
}

class _SecondScreen extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.width,
          ),
        decoration: BoxDecoration(
           color: Colors.orangeAccent
         ),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Expanded(flex: 3,
             child: Padding(
              padding: const EdgeInsets.symmetric(
              vertical: 30.0, horizontal: 20.0
              ),
             child: Column( 
               children: <Widget>[
                Container(
                  width: 50,
                  height: 50,
                  child: IconButton(
                    onPressed: (){}
                    ,icon: Icon(Icons.cancel)),
                    color: Colors.orangeAccent,
                  ),
                Container(
                  child: Column(
                    children: [
                      Detail(),
                    ]
                  )
                )
               ],
             ),
             ),
             
             ),
             Expanded(
              flex: 5,
                child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)
                  )
                ),
                child: Padding(
                  padding: const EdgeInsets.all(24.0),
                  child: Column(
                    children:[
                      Container(
                      child: Text('Detail',
                       style : TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22,)
                      )
                    ),
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
                            )
                          ],
                      ),
                    ),
                   ]
                  )

                  
                ),
              ),
              )
           ],
         ),
        ),
      ),
    );
  }
}