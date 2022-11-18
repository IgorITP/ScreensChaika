import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Assets extends StatelessWidget {
  const Assets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/auforization.png"),
                      fit: BoxFit.cover)),
              // cвойство cover - растягивает картинку на весь эму  доступный размер
              width: double.infinity,
              height: 420,
            ),
          ],
        ),
        Container(
          color: Colors.white,
          height: 502,
          width: double.infinity,
          child: Column(children: [
            const SizedBox(
              height: 67,
            ),
            SvgPicture.asset("assets/logo.svg"),
            const SizedBox(
              height: 120,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              // отступы по краям по горизонтали 20
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(36)),
                // черная обрисовка текста и BorderRadius.circular - это у нас закрушления
                // во круг нашей обрисовки или кнопки
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "👋 Welcome In!",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.black),
                      borderRadius: BorderRadius.circular(36)),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        "Account Recovery",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                )),
            const SizedBox(
              height: 32,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'By clicking "Create an account" or "Login", you agree to our Terms. Find out how we process your data by reviewing our Privacy Policy and Cookie Policy.',
                style: TextStyle(fontSize: 10),
                textAlign: TextAlign.center,
              ),
            )
          ]),
        )
      ],
    );
  }
}
