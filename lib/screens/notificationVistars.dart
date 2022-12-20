import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class NotificationVictors extends StatefulWidget {
  const NotificationVictors({super.key});

  @override
  State<NotificationVictors> createState() => _NotificationVictors();
}

class _NotificationVictors extends State<NotificationVictors> {
  String chosenMenu = "visitors";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 932,
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
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView(
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, mainAxisSpacing: 8),
                shrinkWrap: true,
                children: [
                  Image.asset("assets/Ellipse 109 (1).png"),
                  Image.asset("assets/Ellipse 109 (2).png"),
                  Image.asset("assets/Ellipse 109 (3).png"),
                  Image.asset("assets/Ellipse 109 (4).png"),
                  Image.asset("assets/Ellipse 109 (5).png"),
                  Image.asset("assets/Ellipse 109 (6).png"),
                  Image.asset("assets/Ellipse 109 (7).png"),
                  Image.asset("assets/Ellipse 109 (8).png")
                ],
              ),
            ),
            SizedBox(
              height: 0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 110),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(0, 0, 0, 0.03),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 19.5),
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
            SizedBox(
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
        ),
      ),
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
    required this.onTap,
  }) : super(key: key);

  final double maxWidth;
  final String menuName;
  final String menuType;
  final String chosenMenu;
  final Color color;
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
