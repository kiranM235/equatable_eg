void main() {
  var p1 = Person("Ram");
  var p2 = Person("Ram");
  print(p1.hashCode);
  print(p2.hashCode);
  print(p1 == p2);
}

class Person {
  final String name;
  Person(this.name);

  @override
  int get hashCode => name.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Person && runtimeType == other.runtimeType && name == other.name;
}
