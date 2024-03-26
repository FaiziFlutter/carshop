import 'package:flutter/material.dart';
import 'package:flutter_application_1/payment.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class FinalScreen extends StatefulWidget {
  const FinalScreen({super.key});

  @override
  State<FinalScreen> createState() => _FinalScreenState();
}

class _FinalScreenState extends State<FinalScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.download_done,
            color: secondary,
            size: width * 0.27,
          ),
          TextLine(
            text: 'Thank you for',
            size: width * 0.06,
            weight: FontWeight.bold,
            color: primary,
          ),
          TextLine(
            text: 'your order!',
            size: width * 0.06,
            weight: FontWeight.bold,
            color: primary,
          ),
          SizedBox(
            height: height * 0.03,
          ),
          const TextLine(
            text: 'Quisque suscipit ipsum est, eu',
            color: hintColor,
          ),
          const TextLine(
            text: 'venenatis leo ornare eget',
            color: hintColor,
          ),
          SizedBox(
            height: height * 0.05,
          ),
          Button(
            borderradius: 25,
            text: 'Back to Home',
            textcolor: whiteColor,
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
                builder: (context) {
                  return const PaymentPage();
                },
              ));
            },
          )
        ],
      ),
    );
  }
}
