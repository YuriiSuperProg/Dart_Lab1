// import 'package:lab1_dart/lab1_dart.dart' as lab1_dart;

// // String greet(String name){
// //   return "Привет, $name";
// // }

// // int square(int x) => x * x;

// // double half(double x) => x / 2;

// // void describePet({required String name, String species = "кот", int age = 0}) {
// //   print("$name - $species, возраст $age");
// // }

// // String repeat(String text, [int times = 2]) {
// //   String result = '';
// //   for (int i = 0; i < times; i++){
// //     result += text;
// //   }
// //   return result;
// // }


// void main(List<String> arguments) {
//   // print(repeat("ха"));
//   // print(repeat("ха", 3));
//   // print(repeat("привет", 5));
//   // describePet(name: "Барсик", age: 3);
//   // describePet(name: "Шарик", species: "Пес", age: 5);
//   // describePet(name: "Карасик", species: "Рыба", age: 7);
//   // print(greet("Артем"));
//   // print(greet("Мария"));
//   // print(square(2));
//   // print(half(2.5));
//   // String name = "Артем";
//   // int age = 20;
//   // double height = 1.75;
//   // bool isStudent = true;
//   // print(name);
//   // print(age);
//   // print(height);
//   // print(isStudent);
//   // print("Привет, $name! Через тебе $age лет.");
//   // print("Через 5 лет тебе будет ${age + 5} лет.");
//   // print("Рост: $height м, студент: $isStudent");
//   // var score = 95;
//   // var language = "Dart";
//   // print("$language: $score");
//   // const String appName = "Lab1";
//   // final int startYear = 2026;
//   // print("$appName started in $startYear");
//   // String? city = null;
//   // if (city != null) {
//   //   print(city.toUpperCase());
//   // }
//   // print(city?.toUpperCase());
//   // List<String> fruits = ['яблоко', ',банан', 'груша'];
//   // fruits.add("Апельсин");
//   // print(fruits[0]);
//   // print(fruits.length);
//   // Map<String, dynamic> person = {"name": "Артем", "age": 20};
//   // print(person["name"]);
//   // person["city"] = "Волжский";
//   // Set<int> ids = {1, 2, 3, 2, 1};
//   // print(ids);
//   // print(ids.length);
//   // List<String> fruits2 = ['яблоко', 'банан', 'груша'];
//   // for (var fruit in fruits2) {
//   //   print(fruit);
//   // }
//   // List<int> numbers = [3, 1, 4, 1, 5, 9];
//   // numbers.sort((a, b) => b - a);
//   // print(numbers);
//   // List<String> names = ["Артем", "Мария", "Иван"];
//   // List<String> upper = names.map((name) => name.toUpperCase()).toList();
//   // print(upper);
//   // List<String> lonNames = names.where((name) => name.length > 4).toList();
//   // print(lonNames);
//   // int score2 = 85;
//   // String grade;
//   // if (score2 >= 90) {
//   //   grade = "A";
//   // } else if (score2 >= 75) {
//   //   grade = "B";
//   // } else {
//   //   grade = "C";
//   // }
//   // print(grade);
//   // String result = score2 >= 60 ? "Сдал" : "Не сдал";
//   // print(result);
//   // for (int i = 0; i < 5; i++) {
//   //   print(i);
//   // }
//   // List<String> fruits3 = ["Яблоко", "Банан", "Груша"];
//   // for (var fruit in fruits3) {
//   //   print(fruit);
//   // }
//   // int n = 0;
//   // while (n < 3) {
//   //   print(n);
//   //   n++;
//   // }
//   // String day = "Пн";
//   // switch (day) {
//   //   case "Сб":
//   //   case "Вс":
//   //     print("Выходной");
//   //     break;
//   //   case "Пн":
//   //     print("Начало недели");
//   //     break;
//   //   default:
//   //     print("Рабочий день");
//   // }
// }

double average(List<int> grades) {
  if (grades.isEmpty) return 0;
  int sum = 0;
  for (var grade in grades){
    sum+=grade;
  }
  return sum / grades.length;
}

int maxGrade (List<int> grades) {
  int max = grades[0];
  for (var grade in grades) {
    if (grade > max) {
      max = grade;
    }
  }
  return max;
}

int minGrade (List<int> grades) {
  int min = grades[0];
  for (var grade in grades) {
    if (grade < min) {
      min = grade;
    }
  }
  return min;
}

String letterGrade(double avg) {
  if (avg >= 4.5) return "Отлично";
  if (avg >= 3.5) return "Хорошо";
  if (avg >= 2.5) return "Удволетворительно";
  return "Неудволетворительно";
}

void printStats({required String name, required List<int> grades}) {
  double avg = average(grades);
  print(" $name");
  print("Оценки: $grades");
  print("Среднее: ${avg.toStringAsFixed(2)}");
  print("Макс ${maxGrade(grades)}, Мин: ${minGrade(grades)}");
  print("Итог: ${letterGrade(avg)}");
  print("");
}

void main() {
  Map<String, List<int>> students = {
    "Артем Иванов": [5, 4, 5, 3, 4, 5],
    "Мария Петрова": [4, 4, 5, 5, 4, 5],
    "Иван Сидоров": [3, 3, 4, 2, 3, 4]
  };
  students.forEach((name, grades) {
    printStats(name: name, grades: grades);
  });
  print("Общая статистика");
  int totalStudents = students.length;
  print("Всего студентов: $totalStudents");
  int excellentCount = 0;
  students.forEach((name, grades) {
    if (average(grades) >= 4.5) excellentCount++;
  });
  print("Отлличников: $excellentCount из $totalStudents");
}
