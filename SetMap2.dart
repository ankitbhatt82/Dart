import 'dart:io';

void main() {
  Map<String, String> studentGrades = {};

  while (true) {
    print("Menu:");
    print("1. Add Student");
    print("2. Remove Student");
    print("3. Modify Grade");
    print("4. Print All Grades");
    print("5. Exit");
    print('Enter your choice');

    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        addStudent(studentGrades);
        break;
      case '2':
        removeStudent(studentGrades);
        break;
      case '3':
        modifyGrade(studentGrades);
        break;
      case '4':
        printAllGrades(studentGrades);
        break;
      case '5':
        exit(0);
      default:
        print("Invalid choice. Please enter a valid option.");
    }
  }
}

void addStudent(Map<String, String> studentGrades) {
  print("Enter student's name:");
  String name = stdin.readLineSync()!;

  print("Enter student's grade:");
  String grade = stdin.readLineSync()!;

  studentGrades[name] = grade;
  print("Student added successfully.");
}

void removeStudent(Map<String, String> studentGrades) {
  print("Enter student's name to remove:");
  String name = stdin.readLineSync()!;

  if (studentGrades.containsKey(name)) {
    studentGrades.remove(name);
    print("Student removed successfully.");
  } else {
    print("Student not found.");
  }
}

void modifyGrade(Map<String, String> studentGrades) {
  print("Enter student's name to modify grade:");
  String name = stdin.readLineSync()!;

  if (studentGrades.containsKey(name)) {
    print("Enter new grade:");
    String grade = stdin.readLineSync()!;
    studentGrades[name] = grade;
    print("Grade modified successfully.");
  } else {
    print("Student not found.");
  }
}

void printAllGrades(Map<String, String> studentGrades) {
  if (studentGrades.isEmpty) {
    print("No grades to display.");
  } else {
    print("Grades:");
    studentGrades.forEach((name, grade) {
      print("$name: $grade");
    });
  }
}
