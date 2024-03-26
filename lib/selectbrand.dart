import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class SelectBrand extends StatefulWidget {
  const SelectBrand({super.key});

  @override
  State<SelectBrand> createState() => _SelectBrandState();
}

class _SelectBrandState extends State<SelectBrand> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    final List list = [
      'Gladiator',
      'Land Rover',
      'Gladiator',
      'Land Rover',
      'Gladiator',
      'Land Rover',
      'Gladiator',
      'Land Rover',
      'Gladiator',
      'Land Rover',
      'Gladiator',
      'Land Rover',
      'Gladiator',
      'Land Rover',
    ];

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: Column(
        children: [
          SizedBox(
            height: height * 0.77,
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                SizedBox(
                  height: height * 0.1,
                ),
                Center(
                  child: TextLine(
                    text: 'Select Model',
                    weight: FontWeight.bold,
                    size: width * 0.078,
                    color: primary,
                  ),
                ),
                SizedBox(
                  height: height * 0.13,
                ),
                Expanded(
                    child: ListView.builder(
                  shrinkWrap: true,
                  itemExtent: height * 0.06,
                  physics: const BouncingScrollPhysics(),
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: TextLine(
                        text: list[index],
                        color: hintColor,
                        weight: FontWeight.bold,
                        size: width * 0.073,
                      ),
                    );
                  },
                ))
              ],
            ),
          ),
          Container(
            color: whiteColor,
            height: height * 0.1,
            child: Center(
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.add)),
            ),
          )
        ],
      ),
    );
  }
}
