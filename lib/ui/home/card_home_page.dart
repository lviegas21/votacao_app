import 'package:flutter/material.dart';
import 'package:votacao_app/ui/home/tipo_consulta.dart';

class CardHomePage extends StatelessWidget {
  final TipoConsulta tipoConsulta;
  const CardHomePage({Key? key, required this.tipoConsulta}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {},
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.green,
          boxShadow: [
            BoxShadow(
                offset: Offset(0, 2),
                spreadRadius: 0,
                blurRadius: 2,
                color: Colors.black54)
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Icon(tipoConsulta.icon, size: 40)]),
            const SizedBox(height: 4),
            Text(tipoConsulta.title,
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
