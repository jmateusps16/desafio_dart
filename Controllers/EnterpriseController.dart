/* import '../Models/pessoa.dart';
import 'dart:io';

class EnterpriseController {
  List<Pessoa> persons = <Pessoa>[];

  void showMainMenu() {
    print("""
BEM VINDO

OPÇÕES:
  0. SAIR
  1. ADICIONAR EMPRESA
  2. BUSCAR EMPRESA
  3. LISTAR EMPRESA
  4. SELECIONAR EMPRESA
""");
  }

  int readMainMenuOption() {
    int opcao = int.parse(stdin.readLineSync() ?? "0");

    if (opcao == 0 || opcao < 5) {
      return opcao;
    } else {
      print("Opção inválida");
      return readMainMenuOption();
    }
  }

  void handleMainMenuOption(int opcao) {
    switch (opcao) {
      case 1:
        break;
      case 2:
        break;
      case 3:
        break;
      case 4:
        break;
      default:
        print("Good Bye!");
        break;
    }
  }
}
 */

  // final int id;
  // final Endereco endereco;
  // String documento;
  // final PersonEnum type;
  // final List<PersonValue> values;
  // final List<Pessoa> persons;

 /*  //MenuOptions menu;
  var pessoasFisica = <PhysicalPerson>[];
  int opcao = -1;
  do {
    stdout.writeln("0 - Para sair.");
    stdout.writeln("1 - Incluir Pessoa");
    stdout.writeln("2 - Imprimir lista de Pessoas");
    stdout.write("Informe a opção desejada: ");
    opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        stdout.write("Informe o nome: ");
        String inName = stdin.readLineSync()!;
        stdout.write("Informe o documento: ");
        int inDocument = int.parse(stdin.readLineSync()!);
        stdout.write("Informe a Rua (Logradouro): ");
        String inStreet = stdin.readLineSync()!;
        stdout.write("Informe o Numero: ");
        String inNumber = stdin.readLineSync()!;
        stdout.write("Informe o Complemento: ");
        String inComplement = stdin.readLineSync()!;
        stdout.write("Informe o Bairro: ");
        String inDistrict = stdin.readLineSync()!;
        stdout.write("Informe a Cidade: ");
        String inCity = stdin.readLineSync()!;
        stdout.write("Informe o Estado: ");
        String inState = stdin.readLineSync()!;
        stdout.write("Informe o Cep: ");
        String inCep = stdin.readLineSync()!;

        PhysicalPerson.CreateAndAddToList(
            inName,
            inDocument,
            inStreet,
            inNumber,
            inComplement,
            inDistrict,
            inCity,
            inState,
            inCep,
            pessoasFisica);
        break;
      case 2:

        // pessoasFisica.any((element) => {
        //   return element.document == valor;
        // });
        // pessoasFisica.any((pessoa) => pessoa.Documentos.any(
        //     (documento) => (documento.Value == "123456")));
        pessoasFisica.forEach((element) {
          stdout.writeln("Nome: ${element.name}");
          stdout.writeln("CPF: ${element.document}");
          stdout.writeln(
              "Endereço: ${element.street}, ${element.number}, ${element.complement}, ${element.district}, ${element.city}, ${element.state}, CEP ${element.cep}");
          stdout.writeln("************************\n");
        });
        break;
      default:
        break;
    }
  } while (opcao != 0); */