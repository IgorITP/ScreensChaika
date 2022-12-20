import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StackWidget extends StatelessWidget {
  const StackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        // SvgPicture.asset("assets/Group 319.svg"),
        //               SvgPicture.asset("assets/Group 320.svg"),
        //               Image.asset("assets/human.png"),
        );

    // FilterWidget(
    //           image: "assets/image 1011.png",
    //           text: "Relationship status",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (1).png",
    //           text: "Sexual orientation",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (2).png",
    //           text: "Purpose",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011.png",
    //           text: "Education",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011.png",
    //           text: "Occupation",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (3).png",
    //           text: "Physical fitness",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (4).png",
    //           text: "Culinary skills",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (5).png",
    //           text: "Evenings mood",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (6).png",
    //           text: "Attitude towards children",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (7).png",
    //           text: "Alcohol",
    //           picture: "assets/strelka.svg",
    //         ),
    //         FilterWidget(
    //           image: "assets/image 1011 (8).png",
    //           text: "Smoking",
    //           picture: "assets/strelka.svg",
    //         ),

    // SvgPicture.asset("assets/Rectangle 1 (2).svg"),
    // child: Image.asset("assets/Group 332.png")),
    // Image.asset("assets/Avatar.png"),
  }
}
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
