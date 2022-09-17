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
    stdout.write("Razão Social: ");
    String razaoSocial = stdin.readLineSync()!;
    stdout.write("Nome Fantasia: ");
    String nome = stdin.readLineSync()!;
    stdout.write("Telefone: ");
    String telefone = stdin.readLineSync()!;
    Map<String, String> endereco = Endereco.lereEndereco();
    Pessoa socio = Pessoa.cadastroPessoa();
    Empresa novaEmpresa =
        Empresa(documento, razaoSocial, nome, telefone, endereco, socio);

    return novaEmpresa;
  }
}
