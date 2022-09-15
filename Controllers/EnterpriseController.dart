import '../Models/person.dart';
import 'dart:io';

class EnterpriseController {
  List<Person> persons = <Person>[];

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
