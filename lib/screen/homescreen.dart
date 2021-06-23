import 'package:flutter/material.dart';
import 'package:redesign/detail/listCard.dart';
import 'package:redesign/screen/secondscreen.dart';
// import 'package:redesign/theme.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
  
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orangeAccent,
        shape: 
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        onPressed: (){
           Navigator.push(
          context, MaterialPageRoute(builder: (context) => SecondScreen()));
        },
        child: Center(
          child: Icon(
            Icons.settings_input_component_rounded,
            color: Colors.white
            ),
          ),
        ),
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                  Image.asset('assets/home.jpg'),

                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 6),
                      height: 50,
                      alignment: Alignment.center,
                      // width: 300.0,
                      // padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 10,
                              offset: Offset(2, 2),
                            ),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.search,
                              color: Colors.black26,
                            ),
                            hintText: "Search",
                            hintStyle:
                                TextStyle(color: Colors.black26, fontSize: 18)),
                      ),
                    )
                    ),
                    
                     
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
                        child: Text(
                          "Popular Places",
                        style : TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22,
                        )
                        ),
                      ),
                   ListCard(),   
                ],
                ),
                ),

          ),
      );
  }
}


