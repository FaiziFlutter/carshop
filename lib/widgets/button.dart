import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class Button extends StatelessWidget {
  final Function()? onTap;
  final double? width;
  final double? height;
  final double? borderradius;
  final Color? bgcolor;
  final Color? textcolor;
  final String? text;
  final double? fontsize;
  const Button({
    Key? key,
    this.onTap,
    this.width,
    this.height,
    this.borderradius,
    this.bgcolor,
    this.textcolor,
    this.fontsize,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width1 = MediaQuery.of(context).size.width;
    final height1 = MediaQuery.of(context).size.height;

    return InkWell(
      onTap: onTap,
      child: Container(
        width: width ?? width1,
        height: height ?? height1 * 0.07,
        decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.22),
                blurRadius: 8, // changes position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(borderradius ?? 12),
            color: bgcolor ?? primary),
        child: Center(
          child: TextLine(
              text: text ?? 'Button', color: textcolor, size: fontsize),
        ),
      ),
    );
  }
}
