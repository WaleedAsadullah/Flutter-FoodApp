import 'package:flutter/material.dart';
import 'package:todoapp/Home.dart';
import 'package:todoapp/Bottom.dart';
import 'package:todoapp/Drawerdesign.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white70,
            leading: Container(
              padding: EdgeInsets.all(5),
              margin: EdgeInsets.only(left: 5),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(
                      'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/30b3f4c35285d674f531f4296edd99fe-1589157295795/ccfc68be-0cd0-4c17-b3e8-01f5d0e4c80e.jpg')),
            ),
            centerTitle: true,
            title: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        // padding: EdgeInsets.only(left: 80),
                        child: Text(
                      "Location ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                          color: Colors.black54),
                    )),
                    Icon(
                      Icons.arrow_downward,
                      color: Colors.redAccent,
                    )
                  ],
                ),
                Container(
                    // padding: EdgeInsets.only(right: 20),
                    child: Text(
                  "Karachi, Pakistan",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ))
              ],
            ),
            actions: [
              Container(
                  padding: EdgeInsets.only(right: 20),
                  child:
                      Icon(Icons.search, size: 28.0, color: Colors.redAccent)),
            ],
          ),
          body: Home(),
          drawer: Drawedesign() ,
          bottomNavigationBar: Bottom(),
        ));
  }
}
