import 'package:flutter/material.dart';
import 'package:todoapp/Menucard.dart';
import 'package:todoapp/Bigcard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.20,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage(
                      'https://logicalbaat.com/static/uploads/2019/06/New_Cover.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20),
                color: Colors.yellow,
              )),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Menucard(name:"Burger",colour: Colors.redAccent,colour2: Colors.white,link:'https://media.istockphoto.com/vectors/cartoon-burger-vector-isolated-illustration-vector-id1184633031?b=1&k=20&m=1184633031&s=170667a&w=0&h=HalpbW9_cILHlBodwvTarTp4es4W8uEHxQCx2nE4btk='),
                Menucard(name:"Pizza",colour: Color(0xFFFF8A80),colour2: Colors.white,link:'https://image.shutterstock.com/image-vector/pizza-illustration-vector-600w-460180462.jpg'),
                Menucard(name:"Chinese",colour: Color(0xFFFF8A80),colour2: Colors.white,link:'https://media.istockphoto.com/vectors/hot-yellow-and-white-noodle-soup-in-chinese-bowl-and-chopstick-vector-id656082906?k=20&m=656082906&s=612x612&w=0&h=m4O2R5CUFuc0YSZACjli93HiqcWyaJE1lo-7bbEGAhc='),
                Menucard(name:"Sweets",colour: Color(0xFFFF8A80),colour2: Colors.white,link:'https://st2.depositphotos.com/3687485/11807/v/950/depositphotos_118073026-stock-illustration-donuts-vector-isolated.jpg'),
                Menucard(name:"Drink",colour: Color(0xFFFF8A80),colour2: Colors.white,link:'https://media.istockphoto.com/vectors/glass-of-watermelon-juice-isolated-on-white-background-vector-id1219994598?k=20&m=1219994598&s=612x612&w=0&h=7qbThxCKOKLxwqfNQJ9VVf7geok5lkoFpBgbtPdytTE='),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Bigcard(des : 'Double crispy fried chicken',price : '5.70', rate :'4.9',name: 'The Doppler' ,link:'https://burgerlab.com.pk/wp-content/uploads/2020/12/Dopper_FrontPage.png?c062ef&c062ef'),
                Bigcard(des : '4 smashed beef pattie',price : '8.90',rate :'4.7',name: 'Quadra Reloaded',link:'https://burgerlab.com.pk/wp-content/uploads/2020/12/Quadra_FrontPage.png?c062ef&c062ef'),
                Bigcard(des : 'Smashed beef ',price : '7.50',rate :'4.6',name: 'The Boss',link:'https://burgerlab.com.pk/wp-content/uploads/2020/12/Boss_FrontPage.png?c062ef&c062ef'),
              ],
            ),
          )
        ],

        // color: Colors.white,
      ),
    );
  }
}
