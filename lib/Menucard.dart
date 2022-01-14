import 'package:flutter/material.dart';

class Menucard extends StatefulWidget {
  const Menucard({Key? key,required this.name,required this.colour,required this.link,required this.colour2}) : super(key: key);
  final String name;
  final String link;
    final Color colour;
    final Color colour2;
  @override
  _MenucardState createState() => _MenucardState();
}

class _MenucardState extends State<Menucard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * 0.04,
          // top: MediaQuery.of(context).size.width * 0.04,
          bottom: MediaQuery.of(context).size.height * 0.02),
      width: MediaQuery.of(context).size.width * 0.20,
      height: MediaQuery.of(context).size.height * 0.14,
      // color: Colors.redAccent,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: widget.colour,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 0.8,
            blurRadius: 3,
            offset: Offset(0, 0),
          ),
        ],
      ),
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.03),
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.height*0.033,
              backgroundImage: NetworkImage(widget.link
                  ),
            ),
          ),
          Text(widget.name,style: TextStyle(color: widget.colour2,fontWeight: FontWeight.bold,fontSize: MediaQuery.of(context).size.height*0.021)),
        ],
      ),
    );
  }
}
