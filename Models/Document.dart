import 'document_enum.dart';
import 'dart:io';

class Document {
  DocumentEnum type = DocumentEnum.none;
  String value = "";

  void setData() {
    for (int x = 0; x < DocumentEnum.values.length; x++) {
      stdout.writeln("${x} - ${DocumentEnum.values[x].name}");
    }
    int valuesType = int.parse(stdin.readLineSync() ?? "0");
    type = DocumentEnum.values[valuesType];

    stdout.write("Informe o ${type.name}: ");
    value = stdin.readLineSync() ?? "";
  }
}
