import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class MostLikedWidget extends StatefulWidget {
  const MostLikedWidget({super.key});
  @override
  State<MostLikedWidget> createState() => _MostLikedWidget();
}

class _MostLikedWidget extends State<MostLikedWidget> {
  String chosenLiked = "top 20 rated";
  List<AnketaWidget> anketaWidget = [
    AnketaWidget(
      image: "assets/unsplash_ZGa9d1a_4tA.png",
      text: "First place 🏆",
    ),
    AnketaWidget(
      image: "assets/unsplash_j5almO1E8rU.png",
      text: "Second place",
    ),
    AnketaWidget(
      image: "assets/unsplash_ZGa9d1a_4tA.png",
      text: "First place 🏆",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 932,
        child: Column(
          children: [
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/Group 319.svg"),
                  Image.asset("assets/human.png"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "💫 Most popular",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "The rating is based solely on the preferences of other users and is updated weekly.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 88),
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: 36,
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.circular(40)),
                  child: Row(
                    children: [
                      LikedWidget(
                        likedName: "Top 20 rated",
                        likedType: "top 20 rated",
                        maxWidth: constraints.maxWidth,
                        chosenLiked: chosenLiked,
                        onTap: () {
                          setState(() {
                            chosenLiked = "top 20 rated";
                          });
                        },
                      ),
                      LikedWidget(
                        likedName: "Top 20 liked",
                        likedType: "top 20 liked",
                        maxWidth: constraints.maxWidth,
                        chosenLiked: chosenLiked,
                        onTap: () {
                          setState(() {
                            chosenLiked = "top 20 liked";
                          });
                        },
                      )
                    ],
                  ),
                );
              }),
            ),
            SizedBox(
              height: 500,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                  itemCount: anketaWidget.length,
                  itemBuilder: ((context, index) {
                    return anketaWidget[index];
                  })),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 29),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset("assets/Group 202.svg"),
                      SvgPicture.asset("assets/Group 209.svg"),
                      SvgPicture.asset("assets/Group 204.svg"),
                      SvgPicture.asset("assets/Group 205.svg"),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AnketaWidget extends StatelessWidget {
  const AnketaWidget({
    Key? key,
    required this.text,
    required this.image,
  }) : super(key: key);
  final String text;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 4),
      shrinkWrap: true,
      children: [
        Column(
          children: [
            Image.asset(image),
            // Image.asset("assets/unsplash_ZGa9d1a_4tA.png"),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 72,
              height: 15,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(255, 174, 153, 1)),
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 9,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
        // Column(
        //   children: [
        //     Image.asset("assets/unsplash_j5almO1E8rU.png"),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     Container(
        //       width: 72,
        //       height: 15,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: Color.fromRGBO(255, 174, 153, 1)),
        //       child: Center(
        //         child: Text(
        //           "Second place",
        //           style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontSize: 9,
        //               fontWeight: FontWeight.w700),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // Column(
        //   children: [
        //     Image.asset("assets/unsplash_Zz5LQe-VSMY.png"),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     Container(
        //       width: 72,
        //       height: 15,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: Color.fromRGBO(255, 174, 153, 1)),
        //       child: Center(
        //         child: Text(
        //           "3-th place",
        //           style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontSize: 9,
        //               fontWeight: FontWeight.w700),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
        // Column(
        //   children: [
        //     Image.asset("assets/unsplash_IHIgnhLvz5Q.png"),
        //     SizedBox(
        //       height: 5,
        //     ),
        //     Container(
        //       width: 72,
        //       height: 15,
        //       decoration: BoxDecoration(
        //           borderRadius: BorderRadius.circular(20),
        //           color: Color.fromRGBO(255, 174, 153, 1)),
        //       child: Center(
        //         child: Text(
        //           "4-th place",
        //           style: TextStyle(
        //               color: Color.fromRGBO(255, 255, 255, 1),
        //               fontSize: 9,
        //               fontWeight: FontWeight.w700),
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      ],
    );
  }
}

class LikedWidget extends StatelessWidget {
  const LikedWidget({
    Key? key,
    required this.likedName,
    required this.likedType,
    required this.maxWidth,
    required this.chosenLiked,
    required this.onTap,
  }) : super(key: key);
  final String likedName;
  final String likedType;
  final double maxWidth;
  final String chosenLiked;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: maxWidth / 2,
        height: 36,
        decoration: BoxDecoration(
            color: chosenLiked == likedType
                ? Color.fromRGBO(255, 255, 255, 1)
                : Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(40)),
        child: Center(
          child: Text(
            likedName,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
