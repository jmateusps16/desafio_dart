class Endereco {
  final String rua;
  final String numero;
  final String complemento;
  final String bairro;
  final String cidade;
  final String estado;
  final String cep;

  Endereco(this.rua, this.numero, this.complemento, this.bairro, this.cidade, this.estado, this.cep)

  static adicionarEndereco() {
    Map<String, String> endereco(String rua, String numero, String complemento,
        String bairro, String cidade, String estado, String cep) {
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
}
