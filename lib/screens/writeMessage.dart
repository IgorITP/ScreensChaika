import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class WriteMessage extends StatelessWidget {
  const WriteMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 46),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 932,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 130,
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(239, 239, 239, 0.5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset("assets/Rectangle 1 (2).svg"),
                          const SizedBox(
                            width: 110,
                          ),
                          Column(
                            children: [
                              Stack(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(top: 0, left: 35),
                                    child: Image.asset("assets/Group 332.png"),
                                  ),
                                  Image.asset("assets/Avatar.png"),
                                ],
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Isabella",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500),
                                  )
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SvgPicture.asset("assets/Group 328.svg")
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: BoxDecoration(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
