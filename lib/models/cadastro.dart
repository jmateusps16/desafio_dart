import 'dart:io';
import 'package:desafio_dart/models/empresa.dart';
import 'package:desafio_dart/models/pessoa_juridica.dart';

import '/models/pessoa_fisica.dart';

class Cadastro {
  static cadastroEmpresa() {
    String documento = "";
    String razaoSocial = "";
    String nome = "";
    String telefone = "";
    Map<String, String> endereco = lereEndereco();
    String socio = "";
    Empresa novaEmpresa =
        Empresa(documento, razaoSocial, nome, telefone, endereco, socio);

    return novaEmpresa;
  }

  static cadastroPessoaFisica() {
    String documento = "";
    String nome = "";
    Map<String, String> endereco = lereEndereco();
    PessoaFisica novaPessoaFisica = PessoaFisica(nome, documento, endereco);

    return novaPessoaFisica;
  }

  static cadastroPessoaJuridica() {
    String documento = "";
    String razaoSocial = "";
    String nome = "";
    Map<String, String> endereco = lereEndereco();
    PessoaJuridica novaPessoaJuridica =
        PessoaJuridica(documento, razaoSocial, nome, endereco);

    return novaPessoaJuridica;
  }

  static lereEndereco() {
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
