import 'endereco.dart';
import 'pessoa.dart';
import 'pessoa_juridica.dart';
import 'dart:io';

class Empresa extends PessoaJuridica {
  final String telefone;
  final Pessoa socio;
  Empresa(super.documento, super.razaoSocial, super.nome, this.telefone,
      super.endereco, this.socio);

  static Empresa cadastroEmpresa() {
    stdout.writeln("Por gentileza fornaça os dados solicitados abaixo.");
    stdout.write("CNPJ: ");
    String documento = stdin.readLineSync()!;
    while (validaCNPJ(documento)) {
      stdout.writeln("""
Entrada inválida, por gentileza forneça apenas os 14 digitos do CNPJ.
""");
      stdout.write("CNPJ: ");
      documento = stdin.readLineSync()!;
    }
    stdout.write("Razão Social: ");
    String razaoSocial = stdin.readLineSync() ?? "Não Informado";
    stdout.write("Nome Fantasia: ");
    String nome = stdin.readLineSync() ?? "Não Informado";
    stdout.write("Telefone: ");
    String telefone = stdin.readLineSync()!;
    while (validaApenasNumero(telefone)) {
      stdout.writeln("""
Entrada inválida, por gentileza forneça apenas os numeros do telefone com dd ex. 8132224111.
""");
      stdout.write("Telefone: ");
      telefone = stdin.readLineSync()!.toUpperCase();
    }
    Map<String, String> endereco = Endereco.lereEndereco();
    Pessoa socio = Pessoa.cadastroPessoa();
    Empresa novaEmpresa =
        Empresa(documento, razaoSocial, nome, telefone, endereco, socio);

    return novaEmpresa;
  }
}

bool validaCNPJ(String input) {
  if (input.length != 14 ||
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

bool validaApenasNumero(String input) {
  if (input.length != 10 ||
      input.contains("*") ||
      input.contains(",") ||
      input.contains(".") ||
      input.contains("\\") ||
      input.contains("/") ||
      input.contains("+") ||
      input.contains("-") ||
      input.contains("a") ||
      input.contains("b") ||
      input.contains("c") ||
      input.contains("d") ||
      input.contains("e") ||
      input.contains("f") ||
      input.contains("g") ||
      input.contains("h") ||
      input.contains("i") ||
      input.contains("j") ||
      input.contains("k") ||
      input.contains("l") ||
      input.contains("m") ||
      input.contains("n") ||
      input.contains("o") ||
      input.contains("p") ||
      input.contains("q") ||
      input.contains("r") ||
      input.contains("s") ||
      input.contains("t") ||
      input.contains("u") ||
      input.contains("v") ||
      input.contains("w") ||
      input.contains("x") ||
      input.contains("y") ||
      input.contains("z")) {
    return true;
  } else {
    return false;
  }
}
