import 'dart:io';
import '../models/empresa.dart';

final List<Empresa> listaDeEmpresas = <Empresa>[];

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
* 4. Excluir Empresa           *
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
      buscarEmpresa();
      return mostrarMenuPrincipal();
    case 3:
      ordernarLista(listaDeEmpresas).forEach((empresa) {
        stdout.writeln("""
ID: ${empresa.id}
CNPJ: ${empresa.documento} Data Cadastro: ${empresa.dataInclusao}
Razão Social: ${empresa.razaoSocial}
Nome Fantasia: ${empresa.nome}
Telefone: ${empresa.telefone}
Endereço: ${empresa.endereco["rua"]}, ${empresa.endereco["numero"]}, ${empresa.endereco["complemento"]}, ${empresa.endereco["bairro"]}, ${empresa.endereco["cidade"]}/${empresa.endereco["estado"]},${empresa.endereco["cep"]}
Sócio:
Documento: ${empresa.socio.documento}
Nome: ${empresa.socio.nome}
Endereço: ${empresa.socio.endereco["rua"]}, ${empresa.socio.endereco["numero"]}, ${empresa.socio.endereco["complemento"]}, ${empresa.socio.endereco["bairro"]}, ${empresa.socio.endereco["cidade"]}/${empresa.socio.endereco["estado"]},${empresa.socio.endereco["cep"]}
""");
      });
      return mostrarMenuPrincipal();
    case 4:
      excluirEmpresa();
      return mostrarMenuPrincipal();
    default:
      print("Obrigado, até mais.");
      break;
  }
}

List<Empresa> ordernarLista(List<Empresa> lista) {
  List<Empresa> ordernado = lista.toList();
  ordernado.sort((a, b) => a.razaoSocial.compareTo(b.razaoSocial));
  return ordernado;
}

void buscarEmpresa() {
  stdout.writeln("""

***************************
* Informe o tipo do sócio *
* 1. Pesquisar por CNPJ   * 
* 2. Pesquisar por Socio  *
***************************
""");
  stdout.write("Opção: ");
  String inputUsuario = stdin.readLineSync()!;
  while (inputUsuario.isNotEmpty) {
    if (inputUsuario == "1") {
      pesquisarEmpresaPorCNPJ();
      return;
    } else if (inputUsuario == "2") {
      pesquisarPorSicio();
      return;
    }
  }
}

void pesquisarEmpresaPorCNPJ() {
  if (listaDeEmpresas.isEmpty) {
    stdout.writeln("""
Não existe empresa cadastrada.
""");
    return;
  }

  stdout.write("Informe o CNPJ da Empresa: ");
  final input = stdin.readLineSync()!;

  for (Empresa empresa in listaDeEmpresas) {
    if (empresa.documento == input) {
      imprimirEmpresas(empresa);
    } else {
      stdout.writeln("""
Não existe empresa cadastrada com esse CNPJ.
""");
    }
  }
}

void pesquisarPorSicio() {
  if (listaDeEmpresas.isEmpty) {
    stdout.writeln("""
Não existe empresa cadastrada.
""");
    return;
  }
  stdout.write("Por gentileza informe o CPF ou CNPJ: ");
  final input = stdin.readLineSync()!;
  if (input.length == 11) {
    for (var element in listaDeEmpresas) {
      if (element.socio.documento == input) {
        imprimirEmpresas(element);
      }
    }
  } else if (input.length == 14) {
    for (var element in listaDeEmpresas) {
      if (element.socio.documento == input) {
        imprimirEmpresas(element);
      }
    }
  } else {
    stdout.writeln("""
Não existe empresa cadastrada para o socio informado.
""");
  }
}

void imprimirEmpresas(Empresa empresa) {
  stdout.writeln("""
ID: ${empresa.id}
CNPJ: ${empresa.documento} Data Cadastro: ${empresa.dataInclusao}
Razão Social: ${empresa.razaoSocial}
Nome Fantasia: ${empresa.nome}
Telefone: ${empresa.telefone}
Endereço: ${empresa.endereco["rua"]}, ${empresa.endereco["numero"]}, ${empresa.endereco["complemento"]}, ${empresa.endereco["bairro"]}, ${empresa.endereco["cidade"]}/${empresa.endereco["estado"]},${empresa.endereco["cep"]}
Sócio:
Documento: ${empresa.socio.documento}
Nome: ${empresa.socio.nome}
Endereço: ${empresa.socio.endereco["rua"]}, ${empresa.socio.endereco["numero"]}, ${empresa.socio.endereco["complemento"]}, ${empresa.socio.endereco["bairro"]}, ${empresa.socio.endereco["cidade"]}/${empresa.socio.endereco["estado"]}, ${empresa.socio.endereco["cep"]}
""");
}

void excluirEmpresa() {
  stdout.writeln("""

***********************
* Exclusão de Empresa *
***********************
""");
  stdout.write("Informe o ID: ");
  String empresaID = stdin.readLineSync()!;
  if (listaDeEmpresas.isEmpty) {
    stdout.writeln("""
Não existe empresa cadastrada no momento.
""");
    return;
  }

  listaDeEmpresas.removeWhere((element) => element.id == empresaID);
}
