import 'Address.dart';
import 'Document.dart';
import 'PeronsValue.dart';
import 'PersonEnum.dart';
import 'dart:io';

class Person {
  int id = 0;
  PersonEnum type = PersonEnum.none;
  List<PersonValue> values = <PersonValue>[];
  List<Person> persons = <Person>[];
  List<Document> documents = <Document>[];
  Address endereco = Address();

  void setDocument() {
    int opcao = 1;
    do {
      switch (opcao) {
        case 1:
          var document = Document();
          documents.add(document);
          break;
        default:
          print("Informação inválida.");
          break;
      }
    } while (opcao != 0);
  }

  void setPersonValues() {
    int opcao = 1;
    do {
      switch (opcao) {
        case 1:
          var personValue = PersonValue();
          personValue.setData();
          values.add(personValue);
          break;
        default:
          print("Informação inválida.");
          break;
      }

      print("""
      1 - Adicionar novo valor.
      0 - Sair.
  """);
      opcao = int.parse(stdin.readLineSync() ?? "0");
    } while (opcao != 0);
  }

  void adicionarPessoa() {
    print("""
1 - Juridica
2 - Fisica
""");
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        var person = Person();
        person.setData(PersonEnum.juridical);
        persons.add(person);
        break;
      case 2:
        break;
    }
  }

  void setAddressData() {
    print("Informe o Logradoro: ");
    endereco.Logradoro = stdin.readLineSync() ?? "";
    print("Informe o Complemento: ");
    endereco.Complemento = stdin.readLineSync() ?? "";
    print("Informe o Bairro: ");
    endereco.Bairro = stdin.readLineSync() ?? "";
    print("Informe o Estado: ");
    endereco.Estado = stdin.readLineSync() ?? "";
    print("Informe o Cep: ");
    endereco.Cep = stdin.readLineSync() ?? "";
  }

  void setData(PersonEnum type) {
    this.type = type;
    int opcao = 0;
    setAddressData();

    do {
      print("1 - Informações Pessoal");
      print("2 - Informações Pessoal");
      if (type == PersonEnum.Enterprise) print("3 - Pessoas");
      print("0 - Sair");
      opcao = int.parse(stdin.readLineSync() ?? "0");

      switch (opcao) {
        case 1:
          setPersonValues();
          break;
        case 2:
          break;
        case 3:
          if (type == PersonEnum.Enterprise) {
            adicionarPessoa();
          } else {
            print("Opcao Inválida");
          }
          break;
        case 0:
          break;
        default:
          print("Opção Inválida");
          break;
      }
    } while (opcao != 0);
  }
}