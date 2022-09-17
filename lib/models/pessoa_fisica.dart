import 'endereco.dart';
import 'pessoa.dart';
import 'dart:io';

class PessoaFisica extends Pessoa {
  PessoaFisica(super.nome, super.documento, super.endereco);

  @override
  String get tipo => "Pessoa Física";

  static cadastroPessoaFisica() {
    stdout.writeln("Por gentileza fornaça os dados solicitados abaixo.");
    stdout.write("CPF: ");
    String documento = stdin.readLineSync()!;
    while (validaCPF(documento)) {
      stdout.writeln("""
Entrada inválida, por gentileza forneça apenas os 11 digitos do CPF.
""");
      stdout.write("CPF: ");
      documento = stdin.readLineSync()!.toUpperCase();
    }
    stdout.write("Nome: ");
    String nome = stdin.readLineSync()!;
    Map<String, String> endereco = Endereco.lereEndereco();
    PessoaFisica novaPessoaFisica = PessoaFisica(nome, documento, endereco);

    return novaPessoaFisica;
  }
}

bool validaCPF(String input) {
  if (input.length != 11 ||
      input.contains("-") ||
      input.contains("/") ||
      input.contains("\\") ||
      input.contains(",") ||
      input.contains(".")) {
    return true;
  } else {
    return false;
  }
}
