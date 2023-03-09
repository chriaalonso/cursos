abstract class People {
  String name;
  String lastname;

  People({
    required this.name,
    required this.lastname,
  });

  fullName() {
    return '${this.name} ${this.lastname}';
  }
}
