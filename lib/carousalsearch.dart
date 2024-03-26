import 'package:flutter/material.dart';
import 'package:flutter_application_1/searchcatalog.dart';
import 'package:flutter_application_1/selectbrand.dart';
import 'package:flutter_application_1/selectmodel.dart';
import 'package:flutter_application_1/selectpartsyear.dart';
import 'package:flutter_application_1/widgets/button.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfield.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class CarousalSearch extends StatefulWidget {
  const CarousalSearch({super.key});

  @override
  State<CarousalSearch> createState() => _CarousalSearchState();
}

class _CarousalSearchState extends State<CarousalSearch> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: Padding(
        padding: EdgeInsets.only(
            left: width * 0.07, right: width * 0.07, top: width * 0.16),
        child: Column(
          children: [
            TextLine(
              text: 'Find Parts for 4x4',
              weight: FontWeight.bold,
              size: width * 0.065,
            ),
            TextLine(
              text: 'and adventures',
              weight: FontWeight.bold,
              size: width * 0.065,
            ),
            SizedBox(
              height: height * 0.07,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SelectBrand();
                  },
                ));
              },
              child: const TextFormFieldCustom(
                enabled: false,
                hintText: 'Select Brand',
                suffixIcon: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SelectModel();
                  },
                ));
              },
              child: const TextFormFieldCustom(
                enabled: false,
                hintText: 'Select Model',
                suffixIcon: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return const SelectPartsYear();
                  },
                ));
              },
              child: const TextFormFieldCustom(
                enabled: false,
                hintText: 'Select Parts Year',
                suffixIcon: Icon(Icons.keyboard_arrow_down),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Button(
                text: 'Search',
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return const SearchCatalog();
                    },
                  ));
                },
                borderradius: 25,
                textcolor: whiteColor,
                fontsize: width * 0.06),
          ],
        ),
      ),
    );
  }
}
