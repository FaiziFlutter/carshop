import 'package:flutter/material.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class AddCardPage extends StatefulWidget {
  const AddCardPage({super.key});

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController? controller = TextEditingController();
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: TextLine(
          text: 'Add Card',
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
          padding: EdgeInsets.only(
            left: width * 0.07,
            right: width * 0.07,
            top: height * 0.03,
          ),
          child: Column(
            children: [
              const Image(image: AssetImage('assets/cardslist.png')),
              SizedBox(
                height: height * 0.05,
              ),
              Button(
                text: 'Scan Credit Card',
                bgcolor: secondary,
                borderradius: 25,
                width: width * 0.6,
                textcolor: whiteColor,
                fontsize: width * 0.05,
              ),
              SizedBox(
                height: height * 0.05,
              ),
              SizedBox(
                  height: height * 0.7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextLine(
                        text: "Name on card",
                        size: width * 0.05,
                        weight: FontWeight.bold,
                        color: h2Color,
                      ),
                      const TextFormFieldCustom(),
                      TextLine(
                        text: 'Card number',
                        size: width * 0.05,
                        weight: FontWeight.bold,
                        color: h2Color,
                      ),
                      Container(
                        height: height * 0.07,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.22),
                              blurRadius: 8, // changes position of shadow
                            ),
                          ],
                        ),
                        child: TextFormField(
                          controller: controller,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide.none),
                              fillColor: whiteColor,
                              suffixIcon: const Image(
                                image: AssetImage('assets/visa.png'),
                              ),
                              filled: true,
                              contentPadding: const EdgeInsets.all(10)),
                        ),
                      ),
                      Row(
                        children: [
                          TextLine(
                            text: 'Expiry date',
                            size: width * 0.05,
                            weight: FontWeight.bold,
                            color: h2Color,
                          ),
                          SizedBox(
                            width: width * 0.24,
                          ),
                          TextLine(
                            text: 'Security code',
                            size: width * 0.05,
                            weight: FontWeight.bold,
                            color: h2Color,
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Expanded(child: TextFormFieldCustom()),
                          Expanded(child: TextFormFieldCustom()),
                        ],
                      ),
                      TextLine(
                        text: 'ZIP/Postal code',
                        size: width * 0.05,
                        weight: FontWeight.bold,
                        color: h2Color,
                      ),
                      const TextFormFieldCustom(),
                      TextLine(
                        text: 'Nick Name',
                        size: width * 0.05,
                        weight: FontWeight.bold,
                        color: h2Color,
                      ),
                      const TextFormFieldCustom(),
                    ],
                  )),
              SizedBox(
                height: height * 0.05,
              ),
              Button(
                text: 'Add Card',
                borderradius: 25,
                textcolor: whiteColor,
                fontsize: width * 0.05,
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const PaymentPage();
                    },
                  ));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
