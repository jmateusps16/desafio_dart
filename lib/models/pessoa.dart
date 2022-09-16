import 'dart:math';

abstract class Pessoa {
  var id = Random();
  final String nome;
  final String documento;
  final Map<String, String> endereco;
  final String tipo = "Pessoa Física";

  //String get tipo => tipo;

  Pessoa(this.nome, this.documento, this.endereco);
}
