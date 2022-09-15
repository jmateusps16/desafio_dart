import 'pessoa.dart';

class PessoaJuridica extends Pessoa {
  final String razaoSocial;
  PessoaJuridica(super.documento, this.razaoSocial, super.nome, super.endereco);
  @override
  String get tipo => "Pessoa Juridica";
}
