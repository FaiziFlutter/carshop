import 'package:flutter/material.dart';
import 'package:flutter_application_1/tiresbuynow.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

import 'carbuynow.dart';

class TiresandWheelsPage extends StatefulWidget {
  const TiresandWheelsPage({super.key});

  @override
  State<TiresandWheelsPage> createState() => _TiresandWheelsPageState();
}

class _TiresandWheelsPageState extends State<TiresandWheelsPage> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(
                      25,
                    ),
                    bottomRight: Radius.circular(25))),
            backgroundColor: primary,
            pinned: true,
            expandedHeight: height * 0.33,
            flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                centerTitle: true,
                title: TextLine(
                  text: 'Catalog 4x4',
                  color: whiteColor,
                  weight: FontWeight.bold,
                  size: width * 0.07,
                ),
                background: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                      image: DecorationImage(
                          image: AssetImage('assets/yellowjeep.png'),
                          fit: BoxFit.cover)),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.all(width * 0.03),
                child: GridView.builder(
                  shrinkWrap: true,
                  itemCount: 10,
                  physics: const BouncingScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, mainAxisExtent: height * 0.32),
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return index % 2 == 0
                                    ? const TiresBuyNow()
                                    : const CarsBuyNow();
                              },
                            ));
                          },
                          child: Container(
                              height: height * 0.15,
                              width: width * 0.41,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage(index % 2 == 0
                                      ? 'assets/tires.png'
                                      : 'assets/blackjeep.jpg'),
                                  fit: BoxFit.cover,
                                ),
                              )),
                        ),
                        TextLine(
                          text: index % 2 == 0
                              ? 'Jeep BF Goodrich Tires'
                              : 'RT Off-Road Jeep Accessories & Parts',
                          weight: FontWeight.bold,
                          size: width * 0.045,
                        ),
                        TextLine(
                          text: index % 2 == 0 ? 'AED 33' : 'AED 41',
                          weight: FontWeight.bold,
                          size: width * 0.04,
                          color: secondary,
                        ),
                      ],
                    );
                  },
                )),
          )
        ],
      ),
    );
  }
}
