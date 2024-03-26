import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class ProfileEmail extends StatelessWidget {
  const ProfileEmail({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: TextLine(
          text: 'Email',
          weight: FontWeight.bold,
          size: width * 0.06,
        ),
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: Padding(
        padding: EdgeInsets.all(width * 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextLine(
              text: "E-mail",
              size: width * 0.055,
              color: hintColor,
            ),
            SizedBox(
              height: height * 0.02,
            ),
            const TextFormFieldCustom(),
            SizedBox(
              height: height * 0.03,
            ),
            Button(
                text: "Submit", textcolor: whiteColor, fontsize: width * 0.045),
          ],
        ),
      ),
    );
  }
}
