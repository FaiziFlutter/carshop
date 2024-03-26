import 'package:flutter/material.dart';
import 'package:flutter_application_1/address.dart';
import 'package:flutter_application_1/languagepage.dart';
import 'package:flutter_application_1/privacypolicy.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool valueOf = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: TextLine(
          text: 'Settings',
          weight: FontWeight.bold,
          size: width * 0.06,
        ),
        centerTitle: true,
        elevation: 0.6,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: width * 0.07,
          right: width * 0.07,
          top: width * 0.07,
          bottom: width * 0.07,
        ),
        child: Column(
          children: [
            SizedBox(
              height: height * 0.23,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) {
                        return const LanguagePage();
                      }));
                    },
                    child: Row(
                      children: [
                        TextLine(
                            text: 'Language',
                            color: hintColor,
                            weight: FontWeight.bold,
                            size: width * 0.05),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: primary, size: width * 0.045),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const AddressesPage();
                      }));
                    },
                    child: Row(
                      children: [
                        TextLine(
                            text: 'Addresses',
                            color: hintColor,
                            weight: FontWeight.bold,
                            size: width * 0.05),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: primary, size: width * 0.045),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const PrivacyPolicy();
                      }));
                    },
                    child: Row(
                      children: [
                        TextLine(
                            text: 'Privacy Policy',
                            color: hintColor,
                            weight: FontWeight.bold,
                            size: width * 0.05),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_rounded,
                            color: primary, size: width * 0.045),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        TextLine(
                            text: 'Notification',
                            color: hintColor,
                            weight: FontWeight.bold,
                            size: width * 0.05),
                        const Spacer(),
                        Switch(
                          activeTrackColor: secondary,
                          thumbColor:
                              const MaterialStatePropertyAll(whiteColor),
                          value: valueOf,
                          onChanged: (value) {
                            setState(() {
                              valueOf = value;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height * 0.5,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.exit_to_app,
                        color: hintColor,
                        size: width * 0.05,
                      ),
                      TextLine(
                        text: 'Logout',
                        color: hintColor,
                        weight: FontWeight.w600,
                        size: width * 0.043,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
