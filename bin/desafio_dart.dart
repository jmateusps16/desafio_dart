import 'dart:io';

import 'package:desafio_dart/pessoa_fisica.dart';

void main(List<String> arguments) {
  stdout.writeln("Vamos inserir uma pessoa!");
  stdout.write("Informe o nome: ");
  String nome = stdin.readLineSync() ?? "vazio";
  stdout.write("Informe o CPF: ");
  String cpf = stdin.readLineSync()!;
  stdout.writeln("Vamos inserir o endereço.");
  stdout.write("Rua: ");
  String rua = stdin.readLineSync() ?? "vazio";
  stdout.write("Numero: ");
  String numero = stdin.readLineSync() ?? "vazio";
  stdout.write("Complemento: ");
  String complemento = stdin.readLineSync() ?? "vazio";
  stdout.write("Bairro: ");
  String bairro = stdin.readLineSync() ?? "vazio";
  stdout.write("Cidade: ");
  String cidade = stdin.readLineSync() ?? "vazio";
  stdout.write("Estado: ");
  String estado = stdin.readLineSync() ?? "vazio";
  stdout.write("CEP: ");
  String cep = stdin.readLineSync() ?? "vazio";
  Map<String, String> endereco =
      adicionarEndereco(rua, numero, complemento, bairro, cidade, estado, cep);

  PessoaFisica pessoa = PessoaFisica(nome, cpf, endereco);

  stdout.writeln("""
CPF: ${pessoa.documento}
Nome Completo: ${pessoa.nome}
Endereço: ${pessoa.endereco}
""");
}

void adicionarEmpresa() {}

Map<String, String> adicionarEndereco(
    String rua,
    String numero,
    String complemento,
    String bairro,
    String cidade,
    String estado,
    String cep) {
  Map<String, String> novoEndereco = {};
  novoEndereco.putIfAbsent("rua", () => rua);
  novoEndereco.putIfAbsent("numero", () => numero);
  novoEndereco.putIfAbsent("complemento", () => complemento);
  novoEndereco.putIfAbsent("bairro", () => bairro);
  novoEndereco.putIfAbsent("cidade", () => cidade);
  novoEndereco.putIfAbsent("estado", () => estado);
  novoEndereco.putIfAbsent("cep", () => cep);

  return novoEndereco;
}
