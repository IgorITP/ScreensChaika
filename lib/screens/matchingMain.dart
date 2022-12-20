import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MAtchingMain extends StatelessWidget {
  const MAtchingMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
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
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset("assets/Group 319.svg"),
                      SvgPicture.asset("assets/Group 320.svg"),
                    ],
                  ),
                  Image.asset("assets/human.png"),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 540,
                child: Image.asset("assets/Group 213.png")),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: null,
                        color: Color.fromRGBO(131, 194, 155, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 173,
                    height: 70,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/tolk.png"),
                        SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Message",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: null,
                        color: Color.fromRGBO(255, 174, 153, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 174,
                    height: 70,
                    child: Center(
                      child: Text(
                        "🔥Like!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
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
                      SvgPicture.asset("assets/display.svg"),
                      SvgPicture.asset("assets/love.svg"),
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
