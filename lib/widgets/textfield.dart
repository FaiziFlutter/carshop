import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';

class TextFormFieldCustom extends StatelessWidget {
  const TextFormFieldCustom(
      {super.key, this.hintText, this.enabled, this.suffixIcon});
  final String? hintText;
  final bool? enabled;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    TextEditingController? controller = TextEditingController();
    //var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.025),
      child: Container(
        height: height * 0.07,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.22),
              blurRadius: 8, // changes position of shadow
            ),
          ],
        ),
        child: TextFormField(
          enabled: enabled ?? true,
          controller: controller,
          decoration: InputDecoration(
            hintStyle: const TextStyle(color: hintColor),
            hintText: hintText,
            suffixIcon: suffixIcon,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none),
            fillColor: whiteColor,
            filled: true,
            contentPadding: const EdgeInsets.all(10),
          ),
        ),
      ),
    );
  }
}
