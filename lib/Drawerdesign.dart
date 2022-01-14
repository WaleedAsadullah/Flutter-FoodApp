import 'package:flutter/material.dart';

class Drawedesign extends StatefulWidget {
  const Drawedesign({Key? key}) : super(key: key);

  @override
  _DrawedesignState createState() => _DrawedesignState();
}

class _DrawedesignState extends State<Drawedesign> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 130,
            child: DrawerHeader(
              child: ListTile(
                contentPadding: EdgeInsets.only(right: 0),
                title: Text("Waleed Asad"),
                subtitle: Text("Karachi,Pakistan"),
                leading: CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                      'https://fiverr-res.cloudinary.com/t_profile_original,q_auto,f_auto/attachments/profile/photo/30b3f4c35285d674f531f4296edd99fe-1589157295795/ccfc68be-0cd0-4c17-b3e8-01f5d0e4c80e.jpg'),
                ),
              ),
            ),
          ),
          ListTile(
              trailing: Icon(
                Icons.adjust_rounded,
                color: Colors.white,
              ),
              tileColor: Colors.redAccent,
              leading: TextButton(
                  onPressed: () {},
                  child: Text("Home",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      )))),
          SizedBox(
            height: 2,
          ),
          ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              tileColor: Colors.redAccent,
              leading: TextButton(
                  onPressed: () {},
                  child: Text("Track Order",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      )))),
          SizedBox(
            height: 2,
          ),
          ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              tileColor: Colors.redAccent,
              leading: TextButton(
                  onPressed: () {},
                  child: Text("Promotions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      )))),
          SizedBox(
            height: 2,
          ),
          ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              tileColor: Colors.redAccent,
              leading: TextButton(
                  onPressed: () {},
                  child: Text("My Orders",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      )))),
          SizedBox(
            height: 2,
          ),
          ListTile(
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
              tileColor: Colors.redAccent,
              leading: TextButton(
                  onPressed: () {},
                  child: Text("Contact us",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      )))),
          SizedBox(
            height: 2,
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomRight,
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),),
                  trailing: Icon(
                    Icons.contact_mail_rounded,
                    color: Colors.white,
                  ),
                  tileColor: Colors.redAccent,
                  subtitle: Text(
                    "powered by",
                    style: TextStyle(
                      // fontWeight: FontWeight.bold,
                      // fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  title: Text("Jawan Pakistan",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.white,
                      ))),
            ),
          ),
        ],
      ),
    );
  }
}
