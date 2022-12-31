// Exercises 1 to 7

// Print asterisks in cascade, enter the length in asterisks of the first line as parameter
void printCascade(int startValue) {
  var asterisks = List<String>.filled(startValue, "*", growable: true);
  while (asterisks.isNotEmpty) {
    print(asterisks.join());
    asterisks.removeLast();
  }
}

// Check if a word is a palindrome, enter the word as a parameter and then show the message
void checkPalindrome(String word) {
  word == word.split('').reversed.join('')
      ? print("La stringa *$word* è palindroma")
      : print("La stringa *$word* non è palindroma");
}

// Calculate the area of the rectangle
void calculateRectangleArea({int base = 0, int height = 0}) {
  print("L'area del rettangolo è: ${base * height}");
}

// Sum of two integers, if the two values are equal, print three times their sum.
void sumTwoIntegers(int firstValue, int secondValue) {
  firstValue == secondValue
      ? print(
          "Il triplo della somma dei due valori è: ${(firstValue + secondValue) * 3} ")
      : print("La somma dei due valori è: ${firstValue + secondValue}");
}

// A student's exam result
void examResult(int scritto, int pratica) {
  if (scritto > 8 || scritto < -8) {
    throw "Il voto per l'esame scritto deve essere compreso tra +8 e -8";
  }
  if (pratica < 0 || pratica > 24) {
    throw "Il voto per l'esame pratico deve essere compreso tra 0 e 24";
  }

  pratica + scritto < 18
      ? print("L'alunno è bocciato")
      : pratica + scritto < 31
          ? print("L'alunno è promosso")
          : pratica + scritto < 33
              ? print("L'alunno è promosso con lode")
              : print("L'alunno è bocciato");
}

// Class Person with name, surname, email, password and date of birth.
class Person {
  String name;
  String surname;
  String email;
  String password;
  String dateOfBirth;

  Person(
     this.name,
      this.surname,
      this.email,
      this.password,
      this.dateOfBirth,
      );

      @override 
      String toString(){
        return "Nome: $name, \nCognome: $surname, \nEmail: $email, \nPassword: $password, \nData di nascita: $dateOfBirth";
      }

}

// Calculates the average of the numbers in the array.
  num calculateAverage(List<num> numbers) {
    num sum = numbers.reduce((a,b)=> a+b);
    return sum/numbers.length;
  }