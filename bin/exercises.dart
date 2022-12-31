import 'package:exercises/exercises.dart' as exercises;
import 'package:exercises/persona.dart' as persona;

void main(List<String> arguments) {
  //Primo esercizio
  print("-Primo esercizio \n");
  exercises.printCascade(6);

  //Secondo esercizio
  print("\n-Secondo esercizio \n");
  exercises.checkPalindrome("ingegni");
  exercises.checkPalindrome("piero");

  //Terzo esercizio
  print("\n-Terzo esercizio \n");

  final int base = 4;
  final int height = 6;
  print("Base: $base");
  print("Altezza: $height");
  exercises.calculateRectangleArea(base: base, height: height);

  //Quarto esercizio
  print("\n-Quarto esercizio \n");
  exercises.sumTwoIntegers(5, 5);
  exercises.sumTwoIntegers(5, 7);

  //Quinto esercizio
  print("\n-Quinto esercizio \n");
  exercises.examResult(8, 9);
  exercises.examResult(8, 23);
  exercises.examResult(8, 21);

  //Sesto esercizio
  print("\n-Sesto esercizio \n");
  exercises.Person piero = exercises.Person(
      "Piero", "Sabino", "piero2906@gmailcom", "kk007fn", "15/02/1990");
  exercises.Person luca = exercises.Person(
      "Luca", "Rossi", "luca.rossi@yahoo.it", "gbnm12dn", "24/08/1993");

  print(piero.toString());
  print('\n');
  print(luca.toString());

  //Settimo esercizio
  print("\n-Settimo esercizio \n");
  var arr = <num>[6, 3, 1, 2, 9];
  print("I numeri sono: $arr");
  num average = exercises.calculateAverage(arr);
  print("La media dei numeri è : $average");

  //Ottavo esercizio
  print("\n-Ottavo esercizio \n");
  //Declare tree students
  persona.Student pieroSabino = persona.Student(
      name: "Piero", surname: "Sabino", code: "PS0036", eta: 32);
  persona.Student lucaRossi =
      persona.Student(name: "Luca", surname: "Rossi", code: "LR0045", eta: 28);
  persona.Student marcoBianchi = persona.Student(
      name: "Marco", surname: "Bianchi", code: "MB0054", eta: 30);

  //Declare three teachers
  persona.Teacher giuseppeVerdi = persona.Teacher(
      name: "Giuseppe", surname: "Verdi", code: "GV0063", eta: 45);
  persona.Teacher francescoNeri = persona.Teacher(
      name: "Francesco", surname: "Neri", code: "FN0072", eta: 50);
  persona.Teacher giacomoGialli = persona.Teacher(
      name: "Giacomo", surname: "Gialli", code: "GG0081", eta: 55);

  //Create university
  persona.University uniBA = persona.University(
      students: [pieroSabino, lucaRossi, marcoBianchi],
      teachers: [giuseppeVerdi, francescoNeri, giacomoGialli]);

  // Methods required by the exercise
  print("L'età media degli studenti è ${uniBA.averageEtaStudents()}\n");
  print("L'età media dei docenti è ${uniBA.averageEtaTeachers()}\n");
  print(
      "Il docente con il codice FN0072 è: \n${uniBA.getTeacherByCode("FN0072")}\n");
  print(
      "Lo studente con il codice PS0036 è: \n${uniBA.getStudentByCode("PS0036")}\n");
  print(
      "I docenti con il cognome \"Gialli\" sono: \n ${uniBA.getTeacherBySurname("Gialli")}\n");
  print(
      "Gli studenti con il cognome \"Bianchi\" sono: \n ${uniBA.getStudentBySurname("Bianchi")}\n");
}
