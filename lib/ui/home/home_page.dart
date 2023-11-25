import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:votacao_app/presenter/home_page_controller.dart';
import 'package:votacao_app/ui/home/tipo_consulta.dart';

import 'card_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final presenter = Get.find<GetxHomeController>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Votar"),
      ),
      body: Container(
        child: SafeArea(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SizedBox(
                height: 8,
              ),
              Expanded(
                  flex: 5,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        GridView.count(
                          padding: const EdgeInsets.all(5),
                          crossAxisCount: 2,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 8,
                          shrinkWrap: true,
                          childAspectRatio: (1 / .6),
                          physics: const NeverScrollableScrollPhysics(),
                          children: _buildGridChildren(),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> _buildGridChildren() {
  List<Widget> builder = [];
  builder.add(const CardHomePage(tipoConsulta: TipoConsulta.votacao1));
  builder.add(const CardHomePage(tipoConsulta: TipoConsulta.votacao2));
  builder.add(const CardHomePage(tipoConsulta: TipoConsulta.votacao3));
  builder.add(const CardHomePage(tipoConsulta: TipoConsulta.votacao4));

  return builder;
}
