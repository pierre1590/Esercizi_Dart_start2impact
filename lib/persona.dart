import 'package:collection/collection.dart';

abstract class Person {
  String name;
  String surname;
  String code;
  int eta;

  Person(
      {required this.name,
      required this.surname,
      required this.code,
      required this.eta});
}

class Teacher extends Person {
  Teacher({
    required super.name,
    required super.surname,
    required super.code,
    required super.eta,
  });

  String getCode() => code;
  String getName() => name;
  String getSurname() => surname;
  int getEta() => eta;

  @override
  String toString() {
    return 'Teacher: $name $surname, $code, $eta';
  }
}

class Student extends Person {
  Student({
    required super.name,
    required super.surname,
    required super.code,
    required super.eta,
  });

  String getCode() => code;
  String getName() => name;
  String getSurname() => surname;
  int getEta() => eta;

  @override
  String toString() {
    return 'Student: $name $surname, $code, $eta';
  }
}

class University {
  late List<Student> students;
  late List<Teacher> teachers;

  University({required this.students, required this.teachers});

  Teacher? getTeacherByCode(String code) {
    for (var teacher in teachers) {
      if (teacher.getCode() == code) {
        return teacher;
      }
    }
    return null;
  }

  Iterable<Teacher>? getTeacherBySurname(String surname) {
    return teachers.where((teacher) => teacher.getSurname() == surname);
  }

  Student? getStudentByCode(String code) {
    for (var student in students) {
      if (student.getCode() == code) {
        return student;
      }
    }
    return null;
  }

  Iterable<Student>? getStudentBySurname(String surname) {
    return students.where((student) => student.getSurname() == surname);
  }

  num averageEtaStudents() {
    num sum = 0;
    for (var student in students) {
      sum += student.getEta();
    }
    return sum / students.length;
  }

  num averageEtaTeachers() {
    num sum = 0;
    for (var teacher in teachers) {
      sum += teacher.getEta();
    }
    return sum / teachers.length;
  }
}
