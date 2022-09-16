import 'dart:io';
import '../models/empresa.dart';

List<Empresa> listaDeEmpresas = <Empresa>[];

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
      ordernarLista(listaDeEmpresas).forEach((empresa) {
        stdout.writeln("""
ID: ${empresa.id}
CNPJ: ${empresa.documento}
Razão Social: ${empresa.razaoSocial}
Nome Fantasia: ${empresa.nome}
Telefone: ${empresa.telefone}
Endereço: ${empresa.endereco["rua"]}, ${empresa.endereco["numero"]}, ${empresa.endereco["complemento"]}, ${empresa.endereco["bairro"]}, ${empresa.endereco["cidade"]}/${empresa.endereco["estado"]},${empresa.endereco["cep"]}
Sócio: ${empresa.socio}
""");
      });
      return mostrarMenuPrincipal();
    case 4:
      break;
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
