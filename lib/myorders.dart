import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class MyOrders extends StatefulWidget {
  const MyOrders({super.key});

  @override
  State<MyOrders> createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders>
    with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: bodyColor,
          foregroundColor: primary,
          elevation: 0,
          title: const TextLine(text: 'My Orders'),
          centerTitle: true,
          bottom: TabBar(
              unselectedLabelColor: hintColor,
              labelColor: primary,
              indicatorColor: secondary,
              controller: controller,
              tabs: const [
                Tab(text: 'Active Orders'),
                Tab(text: 'Past Orders')
              ]),
        ),
        body: TabBarView(controller: controller, children: [
          tabContent(height, width),
          tabContent(height, width),
        ]));
  }

  Widget tabContent(double height, double width) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const Divider();
      },
      itemCount: 8,
      itemBuilder: (context, index) {
        return Container(
          color: bodyColor,
          height: height * 0.23,
          child: Padding(
            padding: EdgeInsets.only(left: width * 0.07, right: width * 0.07),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage(index % 2 == 0
                      ? 'assets/tyre.jpg'
                      : 'assets/yellowcar.jpg'),
                  width: width * 0.3,
                  height: height * 0.3,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextLine(
                      text: '#5423652',
                    ),
                    TextLine(
                        text: 'Jeep BF Goodrich',
                        color: hintColor,
                        weight: FontWeight.bold),
                    TextLine(
                        text: 'Tires',
                        color: hintColor,
                        weight: FontWeight.bold),
                    TextLine(
                      text: 'AED 33',
                      color: hintColor,
                    ),
                  ],
                ),
                SizedBox(
                  width: width * 0.03,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
