import 'PersonValueEnum.dart';
import 'dart:io';

class PersonValue {
  PersonValueEnum type = PersonValueEnum.None;
  String value = "";

  void setData() {
    for (int x = 0; x < PersonValueEnum.values.length; x++) {
      print("${x} - ${PersonValueEnum.values[x].name}");
    }
    int valueType = int.parse(stdin.readLineSync() ?? "0");
    type = PersonValueEnum.values[valueType];

    print("informe o ${type.name}:");
    value = stdin.readLineSync() ?? "";
  }
}
