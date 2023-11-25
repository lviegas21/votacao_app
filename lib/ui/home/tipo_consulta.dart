import 'package:flutter/material.dart';

enum TipoConsulta { votacao1, votacao2, votacao3, votacao4 }

extension DadosTipoConsulta on TipoConsulta {
  String get title {
    switch (this) {
      case TipoConsulta.votacao1:
        return 'Votação 1';
      case TipoConsulta.votacao2:
        return 'Votação 2';
      case TipoConsulta.votacao3:
        return 'Votação 3';
      case TipoConsulta.votacao4:
        return 'Votação 4';
    }
  }

  IconData get icon {
    switch (this) {
      case TipoConsulta.votacao1:
        return Icons.abc;
      case TipoConsulta.votacao2:
        return Icons.abc;
      case TipoConsulta.votacao3:
        return Icons.abc;
      case TipoConsulta.votacao4:
        return Icons.abc;
    }
  }
}
