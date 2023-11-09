import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votacao_app/presenter/home_page_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<GetxHomeController>();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF0C274D),
          title: const Text(
            "Votar",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 140, left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      color: const Color(0xFF0C274D),
                      height: 250,
                      width: 180,
                      child: const Center(
                        child: Text(
                          "Presidente",
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFF0C274D),
                    height: 250,
                    width: 180,
                    child: const Center(
                      child: Text(
                        "Vice-Presidente",
                        style: TextStyle(
                            fontSize: 23,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Color(0xFF0C274D),
                    height: 250,
                    width: 180,
                    child: const Center(
                      child: Text(
                        "Secretário(a)",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    color: const Color(0xFF0C274D),
                    height: 250,
                    width: 180,
                    child: const Center(
                      child: Text(
                        "Tesoureiro(a)",
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
