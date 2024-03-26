import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/colorsfile.dart';
import 'package:flutter_application_1/widgets/textfile.dart';

class PageViewClass extends StatefulWidget {
  const PageViewClass({super.key});

  @override
  State<PageViewClass> createState() => _PageViewClassState();
}

class _PageViewClassState extends State<PageViewClass> {
  PageController controller = PageController(initialPage: 0);
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView(
                onPageChanged: (val) {
                  currentpage = val;
                  setState(() {});
                },
                controller: controller,
                children: [
                  const Image(
                      image: ResizeImage(AssetImage('assets/pageview.jpg'),
                          height: 900, width: 500)),
                  const Image(
                      image: ResizeImage(AssetImage('assets/pageview.jpg'),
                          height: 900, width: 500)),
                  const Image(
                      image: ResizeImage(AssetImage('assets/pageview.jpg'),
                          height: 900, width: 500)),
                  const Image(
                      image: ResizeImage(AssetImage('assets/pageview.jpg'),
                          height: 900, width: 500)),
                  Container(
                    color: Colors.red,
                    // child: const Image(
                    //     image: ResizeImage(AssetImage('assets/pageview.jpg'),
                    //         height: 900, width: 500)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24),
              child: Row(
                children: [
                  Container(
                    height: height * 0.1,
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextLine(
                          text: "${currentpage + 1}",
                          size: 30,
                          color: primary,
                          weight: FontWeight.bold,
                        ),
                        const TextLine(text: '/'),
                        const TextLine(
                          text: '5',
                          color: primary,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      setState(() {
                        --currentpage;
                      });
                    },
                    child: const Icon(Icons.arrow_back_ios_rounded),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        ++currentpage;
                      });
                    },
                    child: const Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
