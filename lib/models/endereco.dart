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
    stdout.write("Sigla do Estado: ");
    String estado = stdin.readLineSync()!;
    while (validaEndereco(estado)) {
      stdout.writeln("""
Entrada inválida, por gentileza forneça a sigla.
Consulte aqui: http://www.servicos.blog.br/listas/lista-de-estados-brasileiros-com-siglas-e-capitais/ 
""");
      stdout.write("Sigla do Estado: ");
      estado = stdin.readLineSync()!.toUpperCase();
    }
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

bool validaEndereco(String input) {
  if (input.length != 2 ||
      input.contains("/") ||
      input.contains("-") ||
      input.contains(".") ||
      input.contains("1") ||
      input.contains("2") ||
      input.contains("3") ||
      input.contains("4") ||
      input.contains("5") ||
      input.contains("6") ||
      input.contains("7") ||
      input.contains("8") ||
      input.contains("9") ||
      input.contains("0") ||
      input.contains("-1") ||
      input.contains("-2") ||
      input.contains("-3") ||
      input.contains("-4") ||
      input.contains("-5") ||
      input.contains("-6") ||
      input.contains("-7") ||
      input.contains("-8") ||
      input.contains("-9")) {
    return true;
  } else {
    return false;
  }
}
