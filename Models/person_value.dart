import 'person_value_enum.dart';
import 'dart:io';

class PersonValue {
  PersonValueEnum type = PersonValueEnum.none;
  String value = "";

  void setData() {
    for (int x = 0; x < PersonValueEnum.values.length; x++) {
      print("${x} - ${PersonValueEnum.values[x].name}");
    }
    int valueType = int.parse(stdin.readLineSync() ?? "0");
    type = PersonValueEnum.values[valueType];

    stdout.write("informe o ${type.name}: ");
    value = stdin.readLineSync() ?? "";
  }
}
