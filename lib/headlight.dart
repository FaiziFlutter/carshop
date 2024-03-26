import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/cart.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class HeadLight extends StatefulWidget {
  const HeadLight({super.key});

  @override
  State<HeadLight> createState() => _HeadLightState();
}

class _HeadLightState extends State<HeadLight> {
  int currentIndex = 0;
  var itemcount = 4;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          CarouselSlider.builder(
              itemCount: 4,
              itemBuilder: (context, index, realIndex) {
                return Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/homescreencar.jpeg'),
                    ),
                  ),
                );
              },
              options: CarouselOptions(
                aspectRatio: 16 / 14,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                },
              )),
          Padding(
            padding: EdgeInsets.only(left: width * 0.43, right: width * 0.43),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: List.generate(itemcount, (index) {
                return ClipOval(
                  child: Container(
                      width: width * 0.02,
                      height: height * 0.012,
                      decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.grey)),
                );
              }),
            ),
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Container(
            color: bodyColor,
            child: Padding(
              padding: EdgeInsets.only(left: width * 0.06, right: width * 0.04),
              child: Column(
                children: [
                  TextLine(
                    text:
                        'BF Goodrich 315/70R17 Tire, All-Terrain T/A KO2-08806',
                    color: primary,
                    size: width * 0.065,
                    weight: FontWeight.bold,
                  ),
                  SizedBox(
                    height: height * 0.01,
                  ),
                  TextLine(
                      color: h2Color,
                      size: width * 0.049,
                      text:
                          'Etiam convallis elementum sapien, a aliquam turpis aliquam vitae, praesent sollicitudinn felis vel mi facilisis posuere. Nulla ultrices facillis siss justo,, non varius nisl semper vel. Interdum et malesuada fames ac ante ipsum primis in faucibus.'),
                  SizedBox(
                    height: height * 0.035,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: width * 0.3,
                        child: Center(
                          child: TextLine(
                            text: 'AED 33',
                            color: secondary,
                            weight: FontWeight.bold,
                            size: width * 0.05,
                          ),
                        ),
                      ),
                      Button(
                        text: "Buy Now",
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return const CartPage();
                            },
                          ));
                        },
                        borderradius: 1,
                        textcolor: whiteColor,
                        width: width * 0.6,
                        fontsize: width * 0.05,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
