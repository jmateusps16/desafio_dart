import 'Person.dart';

class PersonCollection {
  List<Person> persons = <Person>[];

  void add(Person person) {
    persons.sort((a, b) => (a.id > b.id) ? 1 : 0);
    person.id = persons.length > 0 ? persons.last.id + 1 : 1;
    persons.add(person);
  }

  Person getPerson(int id) {
    return persons.where((a) => a.id == id).first;
  }
}
