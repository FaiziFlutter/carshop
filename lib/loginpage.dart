import 'package:flutter/material.dart';
import 'package:flutter_application_1/homescreen.dart';
import 'package:flutter_application_1/reigister.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          backgroundColor: bodyColor,
          body: Padding(
            padding: EdgeInsets.only(left: width * 0.08, right: width * 0.08),
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
                const TextFormFieldCustom(hintText: 'E-mail'),
                const TextFormFieldCustom(hintText: 'Password'),
                SizedBox(
                  height: height * 0.02,
                ),
                Button(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const HomeScreen();
                      },
                    ));
                  },
                  text: 'Sign in',
                  textcolor: Colors.white,
                  fontsize: width * 0.055,
                  borderradius: 25,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextLine(
                  text: 'Forgot you password?',
                  size: width * 0.027,
                ),
                SizedBox(
                  height: height * 0.06,
                ),
                TextLine(text: "Don't have an account?", size: width * 0.040),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegisterPage(),
                          ));
                    },
                    child: Text(
                      'Register >',
                      style:
                          TextStyle(color: secondary, fontSize: width * 0.06),
                    )),
                SizedBox(
                  height: height * 0.05,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 190),
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return const HomeScreen();
                          },
                        ));
                      },
                      child: Text(
                        'Skip >',
                        style:
                            TextStyle(color: primary, fontSize: width * 0.05),
                      )),
                )
              ],
            ),
          )),
    );
  }
}
