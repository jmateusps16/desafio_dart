import 'dart:io';

import 'person.dart';

class Document {
  String? Value;
}

class PhysicalPerson extends Person {
  PhysicalPerson(super.name, super.document, super.street, super.number,
      super.complement, super.district, super.city, super.state, super.cep);

  static PhysicalPerson Create(
      String name,
      int document,
      String street,
      String number,
      String complement,
      String district,
      String city,
      String state,
      String cep) {
    return new PhysicalPerson(
        name, document, street, number, complement, district, city, state, cep);
  }

  static void CreateAndAddToList(
      String name,
      int document,
      String street,
      String number,
      String complement,
      String district,
      String city,
      String state,
      String cep,
      List<PhysicalPerson> persons) {
    persons.add(Create(name, document, street, number, complement, district,
        city, state, cep));
  }
}
