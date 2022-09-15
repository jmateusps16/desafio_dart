import 'dart:io';
import '../models/cadastro.dart';

void mostrarMenuPrincipal() {
  stdout.writeln("""
********************************
* Bem vindo                    *
*                              *
* 0. Sair                      *
* 1. Cadastro Empresa          *
* 2. Buscar Empresa            *
* 3. Listar Empresas           *
* 4. Selecionar Empresa        *
********************************
""");
}

int lerOpcaoMenuPrincipal() {
  int opcao = int.parse(stdin.readLineSync() ?? "0");

  if (opcao == 0 || opcao < 5) {
    return opcao;
  } else {
    print("Opção inválida");
    return lerOpcaoMenuPrincipal();
  }
}

void lidarComOpcaoDoMenuPrincipal(int opcao) {
  switch (opcao) {
    case 1:
      Cadastro.cadastroEmpresa();
      break;
    case 2:
      break;
    case 3:
      break;
    case 4:
      break;
    default:
      print("Obrigado, até mais.");
      break;
  }
}
