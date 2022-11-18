import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class IndentlyFerefication2 extends StatelessWidget {
  const IndentlyFerefication2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 932,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 127,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Hello,",
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            const Text(
              "Anna-Lena",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 47,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 75),
              child: SizedBox(
                width: 240,
                height: 240,
                child: SvgPicture.asset("assets/ghost.svg"),
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "We are glad to see you among our users. But it is possible to use all the functionality only after passing the verification by the photo.",
                textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(131, 194, 155, 1),
                    borderRadius: BorderRadius.circular(36)),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.5),
                    child: Text(
                      "Go to dentity verification",
                      textAlign: TextAlign.center,
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
                    border: Border.all(width: 1),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(36)),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.5),
                    child: Text(
                      "Maybe later",
                      textAlign: TextAlign.center,
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
