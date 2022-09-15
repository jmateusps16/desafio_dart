import 'pessoa.dart';

class PessoaFisica extends Pessoa {
  PessoaFisica(super.nome, super.documento, super.endereco);

  @override
  String get tipo => "Pessoa Física";
}
