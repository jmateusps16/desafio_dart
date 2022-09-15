import '../Controllers/EnterpriseController.dart';

class Program {
  EnterpriseController controller = EnterpriseController();

  void run() {
    int opcao = -1;

    while (opcao != 0) {
      controller.showMainMenu();
      opcao = controller.readMainMenuOption();
      controller.handleMainMenuOption(opcao);
    }
  }

  static void start() {
    var program = Program();
    program.run();
  }
}

void main(List<String> arguments) {
  Program.start();
}
