import 'package:flutter/material.dart';
class Bottom extends StatefulWidget {
  const Bottom({ Key? key }) : super(key: key);

  @override
  _BottomState createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.redAccent,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite_border_rounded,color: Colors.redAccent,),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.add_shopping_cart_rounded ,color: Colors.redAccent,),
                label: '',
              ),
            ],
          );
  }
}