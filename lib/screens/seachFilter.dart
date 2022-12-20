import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';

class SeachFilter extends StatefulWidget {
  const SeachFilter({super.key});

  @override
  State<SeachFilter> createState() => _SeachFilterState();
}

class _SeachFilterState extends State<SeachFilter> {
  String chosenGender = "woman";
  String chosenInvoice = "medium";
  List<FilterWidget> filtersWidgets = [
    FilterWidget(
      image: "assets/image 1011.png",
      text: "Relationship status",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (1).png",
      text: "Sexual orientation",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (2).png",
      text: "Purpose",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011.png",
      text: "Education",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011.png",
      text: "Occupation",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (3).png",
      text: "Physical fitness",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (4).png",
      text: "Culinary skills",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (5).png",
      text: "Evenings mood",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (6).png",
      text: "Attitude towards children",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (7).png",
      text: "Alcohol",
      picture: "assets/strelka.svg",
    ),
    FilterWidget(
      image: "assets/image 1011 (8).png",
      text: "Smoking",
      picture: "assets/strelka.svg",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 51,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Filters",
                      style:
                          TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
                    ),
                    SvgPicture.asset("assets/Vector (4).svg"),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 47,
            ),
            const Text(
              "Looking for",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: 90,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    children: [
                      GenderWidget(
                        genderName: "Man",
                        genderType: "man",
                        colorGender: Colors.black,
                        maxWidth: constraints.maxWidth,
                        chosenGender: chosenGender,
                        onTap: () {
                          setState(() {
                            chosenGender = "man";
                          });
                        },
                      ),
                      GenderWidget(
                        genderName: "Woman",
                        genderType: "woman",
                        colorGender: Colors.white,
                        maxWidth: constraints.maxWidth,
                        chosenGender: chosenGender,
                        onTap: () {
                          setState(() {
                            chosenGender = "woman";
                          });
                        },
                      ),
                      GenderWidget(
                        genderName: "Both",
                        genderType: "both",
                        colorGender: Colors.black,
                        maxWidth: constraints.maxWidth,
                        chosenGender: chosenGender,
                        onTap: () {
                          setState(() {
                            chosenGender = "both";
                          });
                        },
                      ),
                    ],
                  ),
                );
              }),
            ),
            SizedBox(
              height: 341,
            ),
            Text(
              "City",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: const TextField(
                  textAlign: TextAlign.center,
                  obscureText: false,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "City to look for",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              "Invoice",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                return Container(
                  width: constraints.maxWidth,
                  height: 90,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(children: [
                    InvoiceWIdget(
                      invoiceName: "Low",
                      typeNameInvoice: "low",
                      color: Colors.black,
                      maxWidth: constraints.maxWidth,
                      chosenInvoice: chosenInvoice,
                      onTap: () {
                        setState(() {
                          chosenInvoice = "low";
                        });
                      },
                    ),
                    InvoiceWIdget(
                      invoiceName: "Medium",
                      typeNameInvoice: "medium",
                      color: Colors.white,
                      maxWidth: constraints.maxWidth,
                      chosenInvoice: chosenInvoice,
                      onTap: () {
                        setState(() {
                          chosenInvoice = "medium";
                        });
                      },
                    ),
                    InvoiceWIdget(
                      invoiceName: "High",
                      typeNameInvoice: "high",
                      color: Colors.black,
                      maxWidth: constraints.maxWidth,
                      chosenInvoice: chosenInvoice,
                      onTap: () {
                        setState(() {
                          chosenInvoice = "high";
                        });
                      },
                    ),
                  ]),
                );
              }),
            ),
            SizedBox(
              height: 39,
            ),
            Text(
              "Advanced Filters",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              "3 Filters are Free",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 50.0 * filtersWidgets.length,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: filtersWidgets.length,
                itemBuilder: (context, index) {
                  return filtersWidgets[index];
                },
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Interests",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                decoration: BoxDecoration(
                    color: Color.fromRGBO(245, 245, 245, 1),
                    borderRadius: BorderRadius.circular(30)),
                child: const TextField(
                  textAlign: TextAlign.start,
                  obscureText: false,
                  inputFormatters: [],
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      hintText: "Search",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 124,
                    height: 33,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            "🏓 table tennis",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/Vector (5).svg")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 120,
                    height: 33,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            "🏸 badminton",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/Vector (5).svg")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 78,
                    height: 33,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            "🖤 sex",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/Vector (5).svg")
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 96,
                    height: 33,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            "🎣 fishing",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/Vector (5).svg")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 115,
                    height: 33,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            "💎 diamonds",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/Vector (5).svg")
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 245, 245, 1),
                        borderRadius: BorderRadius.circular(30)),
                    width: 80,
                    height: 33,
                    child: Row(
                      children: [
                        const Center(
                          child: Text(
                            "🎷 jazz",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w400),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        SvgPicture.asset("assets/Vector (5).svg")
                      ],
                    ),
                  ),
                ]),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: const Color.fromRGBO(131, 194, 155, 1),
                    borderRadius: BorderRadius.circular(36)),
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 19.5),
                    child: Text(
                      "Save",
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
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(36)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/image 364.png"),
                    const SizedBox(
                      width: 10,
                    ),
                    const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 19.5),
                        child: Text(
                          "Full filter access",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
          ],
        ),
      ),
    );
  }
}

class FilterWidget extends StatelessWidget {
  const FilterWidget({
    Key? key,
    required this.image,
    required this.text,
    required this.picture,
  }) : super(key: key);
  final String image;
  final String text;
  final String picture;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Color.fromRGBO(245, 245, 245, 1),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Image.asset(image),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Text(
                  "Choose",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
                SvgPicture.asset(picture)
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class GenderWidget extends StatelessWidget {
  const GenderWidget({
    Key? key,
    required this.genderType,
    required this.genderName,
    required this.maxWidth,
    required this.chosenGender,
    required this.onTap,
    required this.colorGender,
  }) : super(key: key);

  final String genderType;
  final String genderName;
  final double maxWidth;
  final Color colorGender;
  final String chosenGender;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: maxWidth / 3.0,
        height: 90,
        decoration: BoxDecoration(
            color: chosenGender == genderType
                ? const Color.fromRGBO(255, 174, 153, 1)
                : const Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            genderName,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: colorGender, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}

class InvoiceWIdget extends StatelessWidget {
  const InvoiceWIdget({
    Key? key,
    required this.invoiceName,
    required this.typeNameInvoice,
    required this.maxWidth,
    required this.chosenInvoice,
    required this.onTap,
    required this.color,
  }) : super(key: key);
  final String invoiceName;
  final String typeNameInvoice;
  final double maxWidth;
  final String chosenInvoice;
  final Color color;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        width: maxWidth / 3,
        height: 90,
        decoration: BoxDecoration(
            color: chosenInvoice == typeNameInvoice
                ? Color.fromRGBO(133, 160, 229, 1)
                : const Color.fromRGBO(245, 245, 245, 1),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
          child: Text(
            invoiceName,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: color, fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
