import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class CheckYourMailbox extends StatelessWidget {
  const CheckYourMailbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 932,
        width: double.infinity,
        child: Column(children: [
          const SizedBox(
            height: 150,
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 52),
            child: Text(
              "Check your Mailbox",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          const Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "If your account was linked to an email address, we will send you a link for instant recovery.  It may take a few minutes",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          const SizedBox(
            height: 49,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Didn’t recieve? Try again",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 5,
              ),
              SvgPicture.asset("assets/picture.svg"),
            ],
          ),
          const SizedBox(
            height: 313,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 139.5),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.red),
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    "access restoration",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 36,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: const  Color.fromRGBO(131, 194, 155, 1),
                  borderRadius: BorderRadius.circular(30)),
              child: const Center(
                child: Padding(
                  padding:  EdgeInsets.symmetric(vertical: 19.5),
                  child: Text(
                    "Ok",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
