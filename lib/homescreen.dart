import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/bodypart.dart';
import 'package:flutter_application_1/breakswitch.dart';
import 'package:flutter_application_1/carousalsearch.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/drawerpage.dart';
import 'package:flutter_application_1/enginepart.dart';
import 'package:flutter_application_1/headlight.dart';
import 'package:flutter_application_1/notification.dart';
import 'package:flutter_application_1/viewall.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  var itemcount = 4;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        drawer: DrawerPage(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: blueColor),
          backgroundColor: bodyColor,
          elevation: 0,
          actions: [
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const NotificationPage();
                  },
                ));
              },
              child: const Icon(color: blueColor, Icons.notifications),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 12, left: 28),
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const CartPage();
                    },
                  ));
                },
                child:
                    const Icon(color: blueColor, Icons.shopping_cart_outlined),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: height * 0.02,
                  left: width * 0.06,
                  right: width * 0.06, 
                  bottom: height * 0.02,
                ),
                child: const SearchBar(
                  elevation: MaterialStatePropertyAll(1.5),
                  hintText: 'Search name or chassis...',
                  leading: Icon(Icons.search),
                ),
              ),
              CarouselSlider.builder(
                  itemCount: itemcount,
                  itemBuilder: (context, index, realIndex) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const CarousalSearch();
                            },
                          ));
                        },
                        child: Container(
                          width: width * 5,
                          decoration: BoxDecoration(
                            borderRadius:
                                const BorderRadius.all(Radius.circular(12)),
                            color:
                                index == 0 || index == 2 ? primary : secondary,
                          ),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                TextLine(
                                  text: 'Search for',
                                  color: whiteColor,
                                  size: width * 0.05,
                                  weight: FontWeight.bold,
                                ),
                                TextLine(
                                  text: '4X4 parts',
                                  color: whiteColor,
                                  size: width * 0.08,
                                  weight: FontWeight.bold,
                                ),
                                Button(
                                  text: 'Search',
                                  textcolor: primary,
                                  bgcolor: whiteColor,
                                  width: width * 0.5,
                                  borderradius: 30,
                                )
                              ]),
                        ),
                      ),
                    );
                  },
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                  )),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(itemcount, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 18,
                        height: 4,
                        color:
                            currentIndex == index ? Colors.black : Colors.grey),
                  );
                }),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: height * 0.02,
                    left: width * 0.06,
                    right: width * 0.06),
                child: Column(children: [
                  Row(
                    children: [
                      TextLine(
                        text: 'Featured products',
                        weight: FontWeight.bold,
                        size: height * 0.026,
                      ),
                      const Spacer(),
                      TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const ViewAll();
                              },
                            ));
                          },
                          child: Text(
                            'view all',
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: height * 0.017),
                          ))
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const EnginePart();
                                    },
                                  ));
                                },
                                child: Container(
                                  width: width * 0.4,
                                  height: height * 0.19,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'assets/homescreenmachines.jpeg'))),
                                ),
                              ),
                              TextLine(
                                text: 'Engine Part',
                                weight: FontWeight.bold,
                                size: width * 0.047,
                              ),
                              const TextLine(
                                text: 'AED 33',
                                color: secondary,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const BodyPart();
                                    },
                                  ));
                                },
                                child: Container(
                                  width: width * 0.4,
                                  height: height * 0.19,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'assets/homescreenmechanics.jpeg'))),
                                ),
                              ),
                              TextLine(
                                text: 'Body Part',
                                weight: FontWeight.bold,
                                size: width * 0.047,
                              ),
                              const TextLine(
                                text: 'AED 33',
                                color: secondary,
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              TextLine(
                                text: 'Latest products',
                                weight: FontWeight.bold,
                                size: height * 0.026,
                              ),
                              const Spacer(),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(
                                      builder: (context) {
                                        return const ViewAll();
                                      },
                                    ));
                                  },
                                  child: Text(
                                    'view all',
                                    style: TextStyle(
                                        color: Colors.blueGrey,
                                        fontSize: height * 0.017),
                                  ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const HeadLight();
                                    },
                                  ));
                                },
                                child: Container(
                                  width: width * 0.4,
                                  height: height * 0.19,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'assets/homescreencar.jpeg'))),
                                ),
                              ),
                              TextLine(
                                text: 'Head Light',
                                weight: FontWeight.bold,
                                size: width * 0.047,
                              ),
                              const TextLine(
                                text: 'AED 33',
                                color: secondary,
                              ),
                            ],
                          ),
                          const Spacer(),
                          Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(context, MaterialPageRoute(
                                    builder: (context) {
                                      return const BreakSwitch();
                                    },
                                  ));
                                },
                                child: Container(
                                  width: width * 0.4,
                                  height: height * 0.19,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      image: const DecorationImage(
                                          fit: BoxFit.fill,
                                          image: AssetImage(
                                              'assets/homescreenclutch.jpeg'))),
                                ),
                              ),
                              TextLine(
                                text: 'Break Switch',
                                weight: FontWeight.bold,
                                size: width * 0.047,
                              ),
                              const TextLine(
                                text: 'AED 33',
                                color: secondary,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  )
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
