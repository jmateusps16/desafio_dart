import 'pessoa_juridica.dart';

class Empresa extends PessoaJuridica {
  final String telefone;
  final Object socio;
  Empresa(super.documento, super.razaoSocial, super.nome, this.telefone,
      super.endereco, this.socio);
}
