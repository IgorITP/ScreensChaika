import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class LikesPremium extends StatefulWidget {
  const LikesPremium({super.key});

  @override
  State<LikesPremium> createState() => _LikesPremiumState();
}

class _LikesPremiumState extends State<LikesPremium> {
  String chosenMenu = "visitors";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
          height: 932,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              const SizedBox(
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
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    "Notifications",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              const SizedBox(
                height: 18,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    return Container(
                      width: constraints.maxWidth,
                      height: 40,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(245, 245, 245, 1),
                          borderRadius: BorderRadius.circular(30)),
                      child: Row(
                        children: [
                          MenuWidget(
                            menuName: "Visitors",
                            menuType: "visitors",
                            color: Colors.black,
                            maxWidth: constraints.maxWidth,
                            chosenMenu: chosenMenu,
                            onTap: () {
                              setState(() {
                                chosenMenu = "visitors";
                              });
                            },
                          ),
                          MenuWidget(
                            menuName: "Likes",
                            menuType: "likes",
                            color: Colors.black,
                            maxWidth: constraints.maxWidth,
                            chosenMenu: chosenMenu,
                            onTap: () {
                              setState(() {
                                chosenMenu = "likes";
                              });
                            },
                          ),
                          MenuWidget(
                            menuName: "Messages",
                            menuType: "messages",
                            color: Colors.black,
                            picture: ,
                            maxWidth: constraints.maxWidth,
                            chosenMenu: chosenMenu,
                            onTap: () {
                              setState(() {
                                chosenMenu = "messages";
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 54),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 24,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(255, 211, 34, 1))),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(children: [
                      Image.asset("assets/image 364 (1).png"),
                      const SizedBox(
                        width: 4,
                      ),
                      const Text(
                        "To see users who like you, buy a Premium account",
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.w400),
                      )
                    ]),
                  ),
                ),
              ),
              const SizedBox(
                height: 450,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 110),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(0, 0, 0, 0.03),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.5),
                    child: Center(
                      child: Text(
                        "Clear all",
                        style: TextStyle(
                            color: Color.fromRGBO(184, 184, 184, 1),
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 34,
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
                        SvgPicture.asset("assets/love.svg"),
                        SvgPicture.asset("assets/Group 204.svg"),
                        SvgPicture.asset("assets/Group 205 (1).svg"),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}

class MenuWidget extends StatelessWidget {
  const MenuWidget({
    Key? key,
    required this.maxWidth,
    required this.menuName,
    required this.menuType,
    required this.chosenMenu,
    required this.color,
    required this.onTap, required this.picture,
  }) : super(key: key);

  final double maxWidth;
  final String menuName;
  final String menuType;
  final String chosenMenu;
  final Color color;
  final String picture;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: Duration(microseconds: 500),
        width: maxWidth / 3,
        height: 40,
        decoration: BoxDecoration(
            color: chosenMenu == menuType
                ? const Color.fromRGBO(255, 255, 255, 1)
                : const Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            menuName,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
