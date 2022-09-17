import 'package:uuid/uuid.dart';
import 'dart:io';

import 'pessoa_fisica.dart';
import 'pessoa_juridica.dart';

abstract class Pessoa {
  final id = Uuid().v4();
  final String nome;
  final String documento;
  final Map<String, String> endereco;
  final String tipo = "Pessoa Física";

  //String get tipo => tipo;

  Pessoa(this.documento, this.nome, this.endereco);

  static cadastroPessoa() {
    stdout.writeln("""

***************************
* Informe o tipo do sócio *
* 1. Pessoa Física        *
* 2. Pessoa Jurídica      *
***************************
""");
    stdout.write("Opção: ");
    String inputUsuario = stdin.readLineSync()!;
    while (inputUsuario.isNotEmpty) {
      if (inputUsuario == "1") {
        PessoaFisica novaPessoaFisica = PessoaFisica.cadastroPessoaFisica();
        return novaPessoaFisica;
      } else if (inputUsuario == "2") {
        PessoaJuridica novaPessoaJuridica =
            PessoaJuridica.cadastroPessoaJuridica();
        return novaPessoaJuridica;
      }
    }
  }
}
