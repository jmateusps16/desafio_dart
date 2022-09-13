import 'dart:io';
import 'package:desafio_dart/physical_person.dart';

enum MenuOptions {
  exit,
  addPhysicalPerson,
  addEnterprise,
}

void main(List<String> arguments) {
  //MenuOptions menu;
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
  } while (opcao != 0);
}
