import 'address.dart';
import 'document.dart';
import 'person_value.dart';
import 'person_enum.dart';

class Person {
  final int id;
  final Address address;
  final PersonEnum type;
  final List<PersonValue> values;
  final List<Person> persons;
  final List<Document> documents;

  Person(this.id, this.address, this.type, this.values, this.persons,
      this.documents);
}
