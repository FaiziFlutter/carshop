import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class RegisteredBusiness extends StatelessWidget {
  const RegisteredBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(left: width * 0.08, right: width * 0.08),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextLine(
              text: 'Registered Business',
              weight: FontWeight.bold,
              size: width * 0.07,
            ),
            const Column(
              children: [
                TextFormFieldCustom(hintText: 'Business Name'),
                TextFormFieldCustom(hintText: 'E-mail'),
                TextFormFieldCustom(hintText: 'Location'),
                TextFormFieldCustom(hintText: 'Phone Number'),
                TextFormFieldCustom(
                  hintText: 'License Number',
                ),
              ],
            ),
            Button(
              text: 'Sign Up',
              textcolor: whiteColor,
              fontsize: width * 0.05,
              borderradius: width * 0.1,
              height: height * 0.07,
            ),
          ],
        ),
      ),
    );
  }
}
