import 'dart:io';
import 'package:desafio_dart/models/empresa.dart';
import 'package:desafio_dart/models/pessoa_juridica.dart';
import '../controllers/controle_de_fluxos.dart';
import '../models/pessoa_fisica.dart';

class Cadastro {
  static cadastroPessoaFisica() {
    stdout.writeln("Por gentileza fornaça os dados solicitados abaixo.");
    stdout.write("CPF: ");
    String documento = stdin.readLineSync()!;
    stdout.write("Nome: ");
    String nome = stdin.readLineSync()!;
    Map<String, String> endereco = lereEndereco();
    PessoaFisica novaPessoaFisica = PessoaFisica(nome, documento, endereco);

    return novaPessoaFisica;
  }

  static cadastroPessoaJuridica() {
    stdout.writeln("Por gentileza fornaça os dados solicitados abaixo.");
    stdout.write("CNPJ: ");
    String documento = stdin.readLineSync()!;
    stdout.write("Razão Social: ");
    String razaoSocial = stdin.readLineSync()!;
    stdout.write("Nome Fantasia: ");
    String nome = stdin.readLineSync()!;
    Map<String, String> endereco = lereEndereco();
    PessoaJuridica novaPessoaJuridica =
        PessoaJuridica(documento, razaoSocial, nome, endereco);

    return novaPessoaJuridica;
  }

  static lereEndereco() {
    stdout.writeln("""
************************
* Cadastro do Endereço.*
************************
""");
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
}
