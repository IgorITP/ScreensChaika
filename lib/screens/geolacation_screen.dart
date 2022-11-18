import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class GeolacationScreen extends StatefulWidget {
  const GeolacationScreen({super.key});

  @override
  State<GeolacationScreen> createState() => _GeolacationScreenState();
}

class _GeolacationScreenState extends State<GeolacationScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      // cделает так чтобы мой контейнер был по ширине экрана
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/geolacation.svg"),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Turn on geolocation",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 32,
            ),
            const Text(
                "Enabling geolocation allows you to use the app and display potential partners near you.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
          ],
        ),
      ),
    );
  }
}
