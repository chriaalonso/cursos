import 'package:intro_dart_flutter/discipline.dart';
import 'package:intro_dart_flutter/report_card.dart';
import 'package:intro_dart_flutter/student.dart';
import 'package:intro_dart_flutter/teacher.dart';

import 'people.dart';

main() {
  var report_card = ReportCard(
    student: Student(
      name: 'José',
      lastname: 'Silva',
      ra: '0123456789',
    ),
    disciplines: [
      Discipline(
        name: 'Mobile Course',
        teacher: Teacher(
          name: 'Profº diego',
          lastname: 'Antunes',
        ),
        frequency: 98.0,
        grade: 10.0,
      ),
      Discipline(
        name: 'Wordpress',
        teacher: Teacher(
          name: 'Profº Janio',
          lastname: 'Quadros',
        ),
        frequency: 98.0,
        grade: 10.0,
      ),
      Discipline(
        name: 'PHP',
        teacher: Teacher(
          name: 'Profº Toninho',
          lastname: 'Santos',
        ),
        frequency: 91.0,
        grade: 9.0,
      ),
    ],
  );
}
