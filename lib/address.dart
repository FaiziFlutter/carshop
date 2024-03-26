import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_application_1/addaddress.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class AddressesPage extends StatefulWidget {
  const AddressesPage({super.key});

  @override
  State<AddressesPage> createState() => _AddressesPageState();
}

class _AddressesPageState extends State<AddressesPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: TextLine(
          text: 'Address',
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
          padding: EdgeInsets.all(width * 0.04),
          child: Column(
            children: [
              cards(context),
              cards(context),
              cards(context),
              SizedBox(
                height: height * 0.15,
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    color: whiteColor,
                  ),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AddAddress();
                      }));
                    },
                    child: DottedBorder(
                      color: primary,
                      strokeWidth: 1,
                      borderPadding: EdgeInsets.only(
                          top: height * 0.065, bottom: height * 0.065),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.add,
                            color: h2Color,
                          ),
                          TextLine(
                            text: 'Add Address',
                            size: width * 0.065,
                            color: h2Color,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.15,
              ),
              Button(
                text: 'Continue To Payment',
                borderradius: width * 1,
                fontsize: width * 0.05,
                textcolor: whiteColor,
                height: height * 0.075,
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

Widget cards(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return Card(
    elevation: 10,
    child: Padding(
      padding: EdgeInsets.all(width * 0.02),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.radio_button_checked_rounded,
                color: hintColor,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextLine(
                    text: 'Michelangelo Flores',
                    color: h2Color,
                    size: width * 0.05,
                    weight: FontWeight.bold,
                  ),
                ],
              ),
              const Icon(
                Icons.remove_circle_outlined,
                color: hintColor,
              ),
            ],
          ),
          TextLine(
            text: '09297575442',
            color: hintColor,
            size: width * 0.043,
            weight: FontWeight.bold,
          ),
          TextLine(
            text: '658 Yost Island Apt,',
            color: hintColor,
            size: width * 0.043,
            weight: FontWeight.bold,
          ),
          TextLine(
            text: 'Seattle, US',
            color: hintColor,
            size: width * 0.043,
            weight: FontWeight.bold,
          ),
        ],
      ),
    ),
  );
}
