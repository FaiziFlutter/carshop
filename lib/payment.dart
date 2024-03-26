import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/addcard.dart';
import 'package:flutter_application_1/finalscreen.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: TextLine(
          text: 'Payment',
          weight: FontWeight.bold,
          size: width * 0.06,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.04),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.02, right: width * 0.02),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.radio_button_checked_rounded,
                        color: hintColor,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Image(
                          image: const AssetImage('assets/visa.png'),
                          width: width * 0.2,
                          height: height * 0.2),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLine(
                            text: 'Global',
                            weight: FontWeight.bold,
                            color: h2Color,
                          ),
                          TextLine(
                            text: '034XXX-00X0001',
                            color: hintColor,
                            size: width * 0.03,
                          ),
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert,
                        color: hintColor,
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Padding(
                  padding:
                      EdgeInsets.only(left: width * 0.02, right: width * 0.02),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.radio_button_checked_rounded,
                        color: hintColor,
                      ),
                      SizedBox(
                        width: width * 0.06,
                      ),
                      Image(
                          image: const AssetImage('assets/mastercard.png'),
                          width: width * 0.2,
                          height: height * 0.2),
                      SizedBox(
                        width: width * 0.04,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TextLine(
                            text: 'Fast Cash',
                            weight: FontWeight.bold,
                            color: h2Color,
                          ),
                          TextLine(
                            size: width * 0.03,
                            text: '034XXX-00X0001',
                            color: hintColor,
                          )
                        ],
                      ),
                      const Spacer(),
                      const Icon(
                        Icons.more_vert,
                        color: hintColor,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const AddCardPage();
                    },
                  ));
                },
                child: DottedBorder(
                  color: primary,
                  strokeWidth: 0.7,
                  borderPadding: EdgeInsets.only(
                      top: height * 0.06, bottom: height * 0.06),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: h2Color,
                      ),
                      TextLine(
                        text: 'Add Card',
                        size: width * 0.065,
                        color: h2Color,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.08,
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
              const Divider(),
              SizedBox(
                height: height * 0.09,
                child: const Row(
                  children: [
                    TextLine(text: 'Total'),
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
                text: 'Place Order',
                textcolor: whiteColor,
                fontsize: width * 0.05,
                borderradius: width * 0.1,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const FinalScreen();
                    },
                  ));
                },
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
