import 'dart:io';

class Endereco {
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
