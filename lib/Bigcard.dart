import 'package:flutter/material.dart';

class Bigcard extends StatefulWidget {
  const Bigcard(
      {Key? key,
      required this.link,
      required this.name,
      required this.rate,
      required this.price,
      required this.des})
      : super(key: key);
  final String link;
  final String name;
  final String rate;
  final String price;
  final String des;
  @override
  _BigcardState createState() => _BigcardState();
}

class _BigcardState extends State<Bigcard> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.05),
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width * 0.04,
            right: MediaQuery.of(context).size.width * 0.04,
            top: MediaQuery.of(context).size.width * 0.02,
            bottom: MediaQuery.of(context).size.width * 0.04),
        width: MediaQuery.of(context).size.width * 0.60,
        height: MediaQuery.of(context).size.height * 0.40,
        // color: Colors.redAccent,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.001,
              blurRadius: 2,
              offset: Offset(0, 0),
            ),
          ],
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.16,
                    height: MediaQuery.of(context).size.height * 0.05,
                    decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius: BorderRadius.circular(MediaQuery.of(context).size.height * 0.8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star_sharp,
                            size: MediaQuery.of(context).size.width * 0.065,
                            color: Colors.amber.shade600),
                        Text(widget.rate,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black54))
                      ],
                    ),
                  ),
                ),
                Icon(Icons.favorite,
                    size: MediaQuery.of(context).size.width * 0.065,
                    color: Colors.pink),
              ],
            ),
            Container(
                margin:
                    EdgeInsets.all(MediaQuery.of(context).size.width * 0.005),
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.link),
                    fit: BoxFit.fitHeight,
                  ),
                  // color: Colors.yellow,
                )),
            Row(
              children: [
                Text(widget.name,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.black87)),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.01),
                  child: Text(widget.des,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                          color: Colors.black38)),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.01),
              child: Row(
                children: [
                  Text("\$",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.red,
                      )),
                  Text(widget.price,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        color: Colors.black87,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
      Positioned(
        bottom: 0,
        right: 0,
        child: Container(
          child: Container(
            width: MediaQuery.of(context).size.height * 0.05,
            height: MediaQuery.of(context).size.height * 0.05,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.add,
                    size: MediaQuery.of(context).size.width * 0.065,
                    color: Colors.white),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
