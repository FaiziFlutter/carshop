import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: bodyColor,
            foregroundColor: primary,
          ),
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
                const TextFormFieldCustom(hintText: 'Name'),
                const TextFormFieldCustom(hintText: 'E-mail'),
                const TextFormFieldCustom(hintText: 'Password'),
                SizedBox(
                  height: height * 0.02,
                ),
                Button(
                  text: 'Sign up',
                  onTap: () {
                    Navigator.pop(context);
                  },
                  textcolor: Colors.white,
                  fontsize: 20,
                  borderradius: 25,
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Terms & Conditions',
                      style: TextStyle(
                          color: primary,
                          decoration: TextDecoration.underline,
                          decorationColor: Colors.black,
                          fontSize: 15),
                    ))
              ],
            ),
          )),
    );
  }
}
