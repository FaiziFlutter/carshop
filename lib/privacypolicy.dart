import 'package:flutter/material.dart';

class PrivacyPolicy extends StatelessWidget {
  const PrivacyPolicy({super.key});

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(width * 0.1),
        child: SingleChildScrollView(
          child: Text(
            'We at Wasai LLC respect the privacy of your personal information and, as such, make every effort to ensure your information is protected and remains private. As the owner and operator of loremipsum.io (the "Website") hereafter referred to in this Privacy Policy as "Lorem Ipsum", "us", "our" or "we", we have provided this Privacy Policy to explain how we collect, use, share and protect information about the users of our Website (hereafter referred to as “user”, “you” or "your"). For the purposes of this Agreement, any use of the terms "Lorem Ipsum", "us", "our" or "we" includes Wasai LLC, without limitation. We will not use or share your personal information with anyone except as described in this Privacy Policy.',
            style: TextStyle(
              fontSize: width * 0.06,
            ),
          ),
        ),
      ),
    );
  }
}
