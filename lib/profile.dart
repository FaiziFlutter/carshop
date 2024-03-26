import 'package:flutter/material.dart';
import 'package:flutter_application_1/profile_email.dart';
import 'package:flutter_application_1/profile_password.dart';
import 'package:flutter_application_1/profilename.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: width * 1,
            height: height * 0.5,
            child: const Image(
              image: AssetImage('assets/hands.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width * 1,
              height: height * 0.534,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                  color: whiteColor),
              child: Padding(
                padding: EdgeInsets.all(width * 0.05),
                child: Column(
                  children: [
                    TextLine(
                      text: 'Profile',
                      size: width * 0.1,
                      weight: FontWeight.bold,
                    ),
                    ListTile(
                        title: TextLine(
                          text: 'Name',
                          size: width * 0.037,
                        ),
                        subtitle: TextLine(
                          text: 'Mark William',
                          weight: FontWeight.bold,
                          size: width * 0.04,
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const ProfileName();
                              },
                            ));
                          },
                          child: const Icon(
                            Icons.edit,
                            color: secondary,
                          ),
                        )),
                    const Divider(
                      color: Colors.black,
                    ),
                    ListTile(
                        title: TextLine(
                          text: 'E-mail',
                          size: width * 0.037,
                        ),
                        subtitle: TextLine(
                          text: 'markweise@gmail.com',
                          weight: FontWeight.bold,
                          size: width * 0.04,
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const ProfileEmail();
                              },
                            ));
                          },
                          child: const Icon(
                            Icons.edit,
                            color: secondary,
                          ),
                        )),
                    ListTile(
                        title: TextLine(
                          text: 'Password',
                          size: width * 0.037,
                        ),
                        subtitle: TextLine(
                          text: 'Change Password',
                          weight: FontWeight.bold,
                          size: width * 0.04,
                        ),
                        trailing: InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const ProfilePassword();
                              },
                            ));
                          },
                          child: const Icon(
                            Icons.edit,
                            color: secondary,
                          ),
                        ))
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.035, left: width * 0.02),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                color: whiteColor,
              ),
            ),
          )
        ],
      ),
    );
  }
}
