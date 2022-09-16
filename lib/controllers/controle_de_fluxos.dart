import 'dart:io';
import '../models/cadastro.dart';
import '../models/empresa.dart';

List<Empresa> listaDeEmpresas = <Empresa>[];
List listaDePessoaFisica = [];
List listaDePessoaJuridica = [];

void mostrarMenuPrincipal() {
  int opcao = -1;
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
  stdout.write("Opção desejada: ");
  opcao = lerOpcaoMenuPrincipal();
  lidarComOpcaoDoMenuPrincipal(opcao);
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
      Empresa novaEmpresa = Empresa.cadastroEmpresa();
      listaDeEmpresas.add(novaEmpresa);
      return mostrarMenuPrincipal();
    case 2:
      break;
    case 3:
      listaDeEmpresas.forEach((Empresa empresa) {
        print(empresa.nome);
        return;
      });
      return mostrarMenuPrincipal();
    //break;
    case 4:
      break;
    default:
      print("Obrigado, até mais.");
      break;
  }
}
