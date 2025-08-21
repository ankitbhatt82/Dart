/* Create a Student Class, 
Input : From the Student
Rollno : Integer type
Name format : ajay KUmar sHaRma
Should be converted to : Ajay Kumar Sharma
3 Subject Marks : Out of 100
90
80
77

Output:
Total Marks 
Percentage
Grade
>=90 - A Grade
<90 - >=70 B Grade
<70 to >=60 C Grade
<60 to >=50 D Grade

E Grade
CollegeName : Fixed

College Name : All Caps
Name : Proper Case
Subjects 
Total 
Percentage
Grade

Note : Named Constructor, Setter and Getter, Compulsory parameter, optional parameter.
*/

class Student {
  final int rollNo;
  String? name;
  int subject1;
  int subject2;
  int subject3;
  static const String collegeName = 'The Northcap University';

  Student(this.rollNo, this.name, this.subject1, this.subject2, this.subject3);

  Student.fromFormattedName(this.rollNo, String formattedName, this.subject1,
      this.subject2, this.subject3) {
    name = _formatName(formattedName);
  }

  int get totalMarks => subject1 + subject2 + subject3;

  double get percentage => totalMarks / 3;

  String get grade {
    if (percentage >= 90) {
      return 'A Grade';
    } else if (percentage >= 70) {
      return 'B Grade';
    } else if (percentage >= 60) {
      return 'C Grade';
    } else if (percentage >= 50) {
      return 'D Grade';
    } else {
      return 'E Grade';
    }
  }

  String _formatName(String inputName) {
    List<String> nameParts = inputName.toLowerCase().split(' ');
    for (int i = 0; i < nameParts.length; i++) {
      nameParts[i] = nameParts[i][0].toUpperCase() + nameParts[i].substring(1);
    }
    return nameParts.join(' ');
  }

  void printStudentDetails() {
    print("Roll No: $rollNo");
    print("Name: $name");
    print("Subjects:");
    print("  Subject 1: $subject1");
    print("  Subject 2: $subject2");
    print("  Subject 3: $subject3");
    print("Total Marks: $totalMarks");
    print("Percentage: ${percentage.toStringAsFixed(2)}%");
    print("Grade: $grade");
    print("College Name: ${collegeName.toUpperCase()}");
  }
}

void main() {
  // Creating a Student using the named constructor
  Student student = Student.fromFormattedName(101, "aNKit BHatT", 90, 80, 77);

  // Printing student details
  student.printStudentDetails();
}
