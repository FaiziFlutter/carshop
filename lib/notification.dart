import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    //final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: TextLine(
          text: 'Notifications',
          weight: FontWeight.bold,
          size: width * 0.06,
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: bodyColor,
        foregroundColor: primary,
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            leading: index % 2 == 0
                ? const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 187, 36, 25),
                    child: Icon(color: whiteColor, Icons.shopping_bag_outlined))
                : const CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 12, 77, 131),
                    child: Icon(color: whiteColor, Icons.save_alt_outlined)),
            title: const TextLine(
                text:
                    'Aenean non aaccumsan ante. Duis et risus accusan sem tempus porta ne'),
            subtitle: const TextLine(text: '1 hours ago', color: hintColor),
          );
        },
      ),
    );
  }
}
