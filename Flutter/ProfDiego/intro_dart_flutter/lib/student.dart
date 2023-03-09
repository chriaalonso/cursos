import 'people.dart';

class Student extends People {
  String ra;
  Student({this.ra, String name, String lastname})
      : super(name: name, lastname: lastname);
}
