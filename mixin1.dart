class Student {
  String name;
  int age;

  Student(this.name, this.age);

  void study() {
    print('$name is studying.');
  }
}

mixin StudentBehavior {
  void sketchDoodles() {
    print('Sketching doodles.');
  }

  void reviewTermPaper() {
    print('Reading term papers.');
  }

  void powerRun() {
    print('Running for 5 miles.');
  }
}

class StudentWithBehavior extends Student with StudentBehavior {
  StudentWithBehavior(String name, int age) : super(name, age);
}

void main() {
  var student = StudentWithBehavior('Ankit', 20);

  student.study(); // Inherited from Student class
  student.sketchDoodles(); // Mixed-in behavior
  student.reviewTermPaper(); // Mixed-in behavior
  student.powerRun(); // Mixed-in behavior
}
