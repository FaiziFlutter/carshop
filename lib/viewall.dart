import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class ViewAll extends StatefulWidget {
  const ViewAll({super.key});

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: const TabBar(
              tabs: [
                TextLine(text: 'Honda'),
                TextLine(text: 'Audi'),
                TextLine(text: 'Mercedes-Benz'),
              ],
            ),
            expandedHeight: height * 0.3,
            pinned: true,
            stretch: true,
            backgroundColor: primary,
            flexibleSpace: FlexibleSpaceBar(
              title: TextLine(
                text: 'Featured products',
                color: whiteColor,
                size: width * 0.055,
                weight: FontWeight.w600,
              ),
              collapseMode: CollapseMode.pin,
              centerTitle: true,
              background: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/viewallwalpaper.jpg'),
                        fit: BoxFit.fill)),
              ),
            ),
          ),
          SliverToBoxAdapter(
              child: TabBarView(controller: controller, children: [
            tabContent(height, width),
            tabContent(height, width),
            tabContent(height, width),
          ]))
        ],
      ),
    );
  }
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
                      text: 'Tires', color: hintColor, weight: FontWeight.bold),
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
