import 'package:flutter/material.dart';
import 'package:flutter_application_1/tireswheels.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class SearchCatalog extends StatefulWidget {
  const SearchCatalog({super.key});
  @override
  State<SearchCatalog> createState() => _SearchCatalogState();
}

class _SearchCatalogState extends State<SearchCatalog> {
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
                          image: AssetImage('assets/catalogcar.webp'),
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
                      crossAxisCount: 2, mainAxisExtent: height * 0.20),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) {
                                return const TiresandWheelsPage();
                              },
                            ));
                          },
                          child: Container(
                              height: height * 0.16,
                              width: width * 0.44,
                              decoration: BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage(index % 2 == 0
                                      ? 'assets/catalogengine.jpg'
                                      : 'assets/cataloglambo.jpg'),
                                  fit: BoxFit.fill,
                                ),
                              )),
                        ),
                        TextLine(
                          text: index % 2 == 0 ? 'Engine Parts' : 'Lights',
                          weight: FontWeight.bold,
                          size: width * 0.045,
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
