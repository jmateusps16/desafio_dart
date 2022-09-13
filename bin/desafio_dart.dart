import 'dart:io';
import '../Models/person.dart';
import '../Models/person_collection.dart';
import '../Models/person_enum.dart';

class Program {
  PersonCollection collection = PersonCollection();
  int menuLevel = 0;
  int opcao = 0;

  int obterOpcao() {
    print("""
1 - Incluir Empresa
2 - Buscar Empresa (cnpj)
3 - Buscar Empresa (cnpj, cpf) [socio]
4 - Listagem Empresa
5 - Excluir Empresa
0 - Para sair.
""");
    return int.parse(stdin.readLineSync() ?? "0");
  }

  void incluirEmpresa() {
    Person person = Person();
    person.setData(PersonEnum.enterprise);
    collection.add(person);
  }

  void listarEmpresa() {
    for (int x = 0; x < collection.persons.length; x++) {
      print("id: ${collection.persons[x].id}");
      print("total Pessoas: ${collection.persons[x].persons.length}");
      for (int y = 0; y < collection.persons[x].values.length; y++) {
        print(
            "${collection.persons[x].values[y].type.name}: ${collection.persons[x].values[y].value}");
      }
    }
  }

  void menu() {
    do {
      opcao = obterOpcao();

      switch (opcao) {
        case 1:
          incluirEmpresa();
          break;
        case 2:
          break;
        case 3:
          break;
        case 4:
          listarEmpresa();
          break;
        case 5:
          break;
      }
    } while (opcao != 0);
  }
}

void main(List<String> arguments) {
  Program programa = Program();
  programa.menu();
}
