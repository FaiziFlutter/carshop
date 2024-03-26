import 'package:flutter/material.dart';
import 'package:flutter_application_1/address.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class AddAddress extends StatelessWidget {
  const AddAddress({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: TextLine(
              text: 'Create Address',
              weight: FontWeight.bold,
              size: width * 0.06,
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: bodyColor,
            foregroundColor: primary,
          ),
          backgroundColor: bodyColor,
          body: Padding(
            padding: EdgeInsets.only(
                left: width * 0.08,
                right: width * 0.08,
                top: width * 0.08,
                bottom: width * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextLine(
                  text: 'Name',
                  size: width * 0.045,
                  color: h2Color,
                  weight: FontWeight.bold,
                ),
                const TextFormFieldCustom(),
                TextLine(
                  text: 'Address lane',
                  size: width * 0.045,
                  color: h2Color,
                  weight: FontWeight.bold,
                ),
                const TextFormFieldCustom(),
                TextLine(
                  text: 'City',
                  size: width * 0.045,
                  color: h2Color,
                  weight: FontWeight.bold,
                ),
                const TextFormFieldCustom(),
                TextLine(
                  text: 'Postal Code',
                  size: width * 0.045,
                  color: h2Color,
                  weight: FontWeight.bold,
                ),
                const TextFormFieldCustom(),
                TextLine(
                  text: 'Phone Number',
                  size: width * 0.045,
                  color: h2Color,
                  weight: FontWeight.bold,
                ),
                const TextFormFieldCustom(),
                SizedBox(
                  height: height * 0.02,
                ),
                Button(
                  text: 'Add Address',
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return const AddressesPage();
                      },
                    ));
                  },
                  textcolor: Colors.white,
                  fontsize: 20,
                  borderradius: 25,
                ),
              ],
            ),
          )),
    );
  }
}
