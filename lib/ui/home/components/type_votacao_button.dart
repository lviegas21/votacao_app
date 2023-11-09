import 'package:flutter/material.dart';

class TypeVotacaoButton extends StatelessWidget {
  final String nome;

  TypeVotacaoButton({Key? key, required this.nome}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      height: 250,
      width: 180,
      child: Center(
        child: Text(nome),
      ),
    );
  }
}
