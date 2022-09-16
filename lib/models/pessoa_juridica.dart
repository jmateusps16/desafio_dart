import 'endereco.dart';
import 'pessoa.dart';
import 'dart:io';

class PessoaJuridica extends Pessoa {
  final String razaoSocial;
  PessoaJuridica(super.documento, this.razaoSocial, super.nome, super.endereco);
  @override
  String get tipo => "Pessoa Juridica";

  static cadastroPessoaJuridica() {
    stdout.writeln("Por gentileza fornaça os dados solicitados abaixo.");
    stdout.write("CNPJ: ");
    String documento = stdin.readLineSync()!;
    stdout.write("Razão Social: ");
    String razaoSocial = stdin.readLineSync()!;
    stdout.write("Nome Fantasia: ");
    String nome = stdin.readLineSync()!;
    Map<String, String> endereco = Endereco.lereEndereco();
    PessoaJuridica novaPessoaJuridica =
        PessoaJuridica(documento, razaoSocial, nome, endereco);

    return novaPessoaJuridica;
  }
}
