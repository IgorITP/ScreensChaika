import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class IdentlyFerification extends StatelessWidget {
  const IdentlyFerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 127,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "👋🏻 Hello,",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Anna-Lena",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            SizedBox(
              height: 270,
              width: 270,
              child: Stack(children: [
                Image.asset("assets/gerl.png"),
                // я обвернул в алигн для того чтобы галку поставить спраыва с веху, так по умолчанию stack ставит сверху слева
                Align(
                    alignment: Alignment.topRight,
                    child: SvgPicture.asset("assets/stars.svg"))
              ]),
            ),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "We are glad to see you among our users.While we are checking your photo, can you tell us a little about yourself?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                    color: Color.fromRGBO(131, 194, 155, 1),
                    borderRadius: BorderRadius.circular(36)),
                child: const Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19.5),
                    child: Text(
                      "Let’s Go!",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1),
                    borderRadius: BorderRadius.circular(36)),
                child: const Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 19.5),
                    child: Text(
                      "Maybe later",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
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
