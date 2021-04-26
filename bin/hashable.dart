class Person {
  final int person_id;
  final String person_name;

  Person(
    this.person_id,
    this.person_name,
  );

  Person.first()
      : person_id = 1,
        person_name = ' Taylan';
  Person.second()
      : person_id = 2,
        person_name = 'Mazlum';
  Person.third()
      : person_id = 2,
        person_name = 'Mazlum';

  @override
  int get hashCode => person_id;

  @override
  bool operator ==(covariant Person other) {
    return person_id == other.person_id;
  }

  @override
  String toString() => 'Persons = [id : $person_id name : $person_name]';
}

final persons = [
  Person.first(),
  Person.second(),
  Person.third(),
  Person.third(),
  Person(1, 'Taylan'),
  Person(1, 'Taylan'),
  Person(1, 'Taylan'),
];

extension ToHashSetCheck<T> on List<T> {
  List<T> get toHashSetCheck => [
        ...{...this}
      ];
}

void main() => print('${persons.toHashSetCheck}');
