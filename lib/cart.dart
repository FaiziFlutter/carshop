import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bodyColor,
      appBar: AppBar(
        title: TextLine(
          text: 'Cart',
          weight: FontWeight.bold,
          size: width * 0.06,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: width * 0.06, right: width * 0.06),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.03,
              ),
              Container(
                height: height * 0.09,
                decoration: const BoxDecoration(
                  color: whiteColor,
                ),
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.07, right: width * 0.07),
                  child: Row(
                    children: [
                      TextLine(
                        text: 'Products',
                        size: width * 0.05,
                        weight: FontWeight.bold,
                      ),
                      const Spacer(),
                      TextLine(
                        text: '4 Item',
                        size: width * 0.05,
                        weight: FontWeight.bold,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height,
                child: ListView.separated(
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Container(
                      color: bodyColor,
                      height: height * 0.23,
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
                          const Spacer(),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextLine(
                                text: 'BF Goodrich ',
                              ),
                              TextLine(text: '315/70R17 Tire,'),
                              TextLine(text: ' All-Terrain T/A...'),
                              TextLine(
                                text: 'AED 41',
                                color: secondary,
                              ),
                              TextLine(text: 'Delete')
                            ],
                          ),
                          SizedBox(
                            width: width * 0.03,
                          ),
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.add),
                              TextLine(text: '3'),
                              Icon(Icons.minimize),
                            ],
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              Row(
                children: [
                  Expanded(
                      child: SizedBox(
                    height: height * 0.07,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        fillColor: whiteColor,
                        filled: true,
                        hintText: 'Coupan Number',
                        hintStyle: TextStyle(
                          color: hintColor,
                        ),
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  )),
                  SizedBox(
                    height: height * 0.12,
                  ),
                  SizedBox(
                    width: width * 0.25,
                    height: height * 0.07,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll(primary),
                        ),
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                            color: whiteColor,
                          ),
                        )),
                  )
                ],
              ),
              const Divider(),
              SizedBox(
                height: height * 0.09,
                child: const Row(
                  children: [
                    TextLine(text: 'Discount'),
                    Spacer(),
                    TextLine(
                      text: 'AED 26',
                      color: secondary,
                    ),
                  ],
                ),
              ),
              const Divider(),
              SizedBox(
                height: height * 0.09,
                child: const Row(
                  children: [
                    TextLine(text: 'Subtotal'),
                    Spacer(),
                    TextLine(
                      text: 'AED 324',
                      color: secondary,
                    )
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              Button(
                text: 'Checkout',
                textcolor: whiteColor,
                fontsize: width * 0.05,
                borderradius: width * 0.1,
              ),
              SizedBox(
                height: height * 0.05,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
