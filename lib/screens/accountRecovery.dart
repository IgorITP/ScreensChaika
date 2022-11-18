import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AccountRecovery extends StatelessWidget {
  const AccountRecovery({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
          height: 932,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 67),
                child: Text(
                  "Account recovery",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 32),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(245, 245, 245, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: const TextField(
                    textAlign: TextAlign.center,
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                        hintText: "E-mail address",
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Enter the email address that was linked to your account",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 366,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromRGBO(131, 194, 155, 1),
                      borderRadius: BorderRadius.circular(30)),
                  child: const Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 19.5),
                      child: Text("Sent",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400)),
                    ),
                  ),
                ),
              )
            ],
          )),
    ));
  }
}
