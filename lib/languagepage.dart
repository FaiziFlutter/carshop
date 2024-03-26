import 'package:flutter/material.dart';
import 'package:flutter_application_1/loginpage.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({super.key});

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: bodyColor,
          body: Padding(
            padding: EdgeInsets.only(left: width * 0.03, right: width * 0.03),
            child: Column(
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Container(
                    padding:
                        EdgeInsets.only(left: width * 0.2, right: width * 0.2),
                    child: Image.asset('assets/logo.png')),
                SizedBox(
                  height: height * 0.12,
                ),
                Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 30, top: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Image(
                                image: ResizeImage(
                                    AssetImage('assets/preview.png'),
                                    width: 50,
                                    height: 50)),
                            SizedBox(
                              height: height * 0.03,
                            ),
                            const TextLine(
                                text: 'Choose Your Preferred Language',
                                weight: FontWeight.bold,
                                size: 18),
                            SizedBox(
                              height: height * 0.02,
                            ),
                            const TextLine(
                              text: 'Please Select you language',
                              color: hintColor,
                              size: 16,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ListTile(
                        leading: const Image(
                          image: ResizeImage(AssetImage('assets/arabic.png'),
                              height: 18, width: 28),
                        ),
                        title: const Text('عربي'),
                        trailing: InkWell(
                          onTap: () {},
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: primary,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white, size: width * 0.045),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                      ),
                      ListTile(
                        leading: const Image(
                            image: ResizeImage(AssetImage('assets/british.png'),
                                height: 18, width: 28)),
                        title: const Text('English'),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const LoginPage();
                              },
                            ));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(5),
                            decoration: const BoxDecoration(
                              color: primary,
                              shape: BoxShape.circle,
                            ),
                            child: Icon(Icons.arrow_forward_ios_rounded,
                                color: Colors.white, size: width * 0.045),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
