import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/myorders.dart';
import 'package:flutter_application_1/profile.dart';
import 'package:flutter_application_1/reigiseteredbusiness.dart';
import 'package:flutter_application_1/settings.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

import 'model/carmodel.dart';

class DrawerPage extends StatelessWidget {
  DrawerPage({super.key});

  final List<CarModel> drawer = [
    CarModel(Icons.grid_view_outlined, "Registered Business",
        const RegisteredBusiness()),
    CarModel(Icons.home_outlined, "Home", const HomeScreen()),
    CarModel(Icons.person_3_outlined, "Profile", const ProfilePage()),
    CarModel(Icons.content_paste_sharp, "My Cart", const CartPage()),
    CarModel(
      Icons.menu_book,
      "My Orders",
      const MyOrders(),
    ),
    CarModel(
      Icons.settings,
      "Settings",
      const SettingPage(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Drawer(
      child: Padding(
        padding: EdgeInsets.only(
            left: width * 0.08,
            top: height * 0.1,
            bottom: 50,
            right: width * 0.08),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Image(
                image: ResizeImage(AssetImage('assets/logo.png'),
                    width: 125, height: 55)),
            SizedBox(
              height: height * 0.06,
            ),
            Flexible(
              child: ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: drawer.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    dense: true,
                    minLeadingWidth: 4,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => drawer[index].navigateTo));
                    },
                    leading: Icon(drawer[index].icon),
                    title: Text(drawer[index].text),
                  );
                },
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.transparent,
                  child: SizedBox(
                    width: width * 0.15,
                    child: const ClipOval(
                        child: Image(image: AssetImage('assets/hands.jpeg'))),
                  )),
              title: TextLine(
                text: 'Mark William',
                weight: FontWeight.bold,
                color: primary,
                size: width * 0.05,
              ),
              subtitle: TextLine(
                text: 'Markwilliam@gmail.com',
                size: width * 0.026,
                color: hintColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
