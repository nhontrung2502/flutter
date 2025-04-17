import 'dart:io';

void main(List<String> args) {
  List<Classroom> classroomsList = [];
  createClassRoomsList(classroomsList);
  List<Student> studentsList = [];
  createStudentsList(studentsList);
  List<Teacher> teachersList = [];
  createTeachersList(teachersList);

  var option = 0;
  while (option != 7) {
    print("=== School Management Application ===");
    print("1. Show Students List");
    print("2. Show Teachers List");
    print("3. Show Classrooms List");
    print("4. Average Score of Students");
    print("5. Assign Student to Classroom");
    print("6. Assign Teacher to Classroom");
    print("7. Exit");
    print("Choose option:");
    option = isValidNumber();

    switch (option) {
      case 1:
        showStudentsListInfo(studentsList);
        break;
      case 2:
        showTeachersListInfo(teachersList);
        break;
      case 3:
        showClassroomsListInfo(classroomsList);
        break;
      case 4:
        showAverageScore(studentsList);
        break;
      case 5:
        print("Enter class ID:");
        var classId = isValidNumber();
        print("Enter student ID:");
        var studentId = isValidNumber();

        for (var classroom in classroomsList) {
          if (classroom.id == classId) {
            Student student = studentsList.firstWhere((student) => student.id == studentId);
            student.grade = classroom.name;
            classroom.addStudentToClass(student);
          }
        }
        break;
      case 6:
        print("Enter class ID:");
        var classId = isValidNumber();
        print("Enter teacher ID:");
        var teacherId = isValidNumber();

        for (var classroom in classroomsList) {
          if (classroom.id == classId) {
            Teacher teacher = teachersList.firstWhere((teacher) => teacher.id == teacherId);
            classroom.addTeacherToClass(teacher);
          }
        }
        break;
      case 7:
        return;
    }
  }
}

class Person {
  var id;
  var name;
  var age;
  var gender;
}

class Student extends Person {
  var grade;
  var score;

  void showStudentInfo() {
    print("ID: $id - Name: $name - Age: $age - Sex: $gender - Grade: $grade - Score: $score");
  }
}

class Teacher extends Person {
  var subject;
  var salary;

  void showTeacherInfo() {
    print("ID: $id - Name: $name - Age: $age - Sex: $gender - Subject: $subject - Salary: $salary");
  }
}

class Classroom {
  var id;
  var name;
  List<Student> students = [];
  var teacher;

  void addStudentToClass(Student student) {
    this.students.add(student);
    this.showClassInfo();
  }

  void addTeacherToClass(Teacher teacher) {
    this.teacher = teacher;
    this.showClassInfo();
  }

  void showClassInfo() {
    print("Class ID: $id - Class name: $name");
    print("Teacher:");
    (teacher != null) ? teacher.showTeacherInfo() : print("No teacher assigned.");
    print("Students list:");
    if (students.isEmpty) {
      print("No students assigned.");
    } else {
      for (var student in students) {
        student.showStudentInfo();
      }
    }
  }
}

void createClassRoomsList(classroomsList) {
  for (int i = 1; i <= 3; i++) {
    Classroom classroom = Classroom();

    classroom.id = i;
    classroom.name = "A$i";
    classroom.students = [];
    classroom.teacher = null;

    classroomsList.add(classroom);
  }
}

void createStudentsList(studentsList) {
  for (int i = 1; i <= 20; i++) {
    Student student = Student();

    student.id = i;
    student.name = "Student $i";
    student.age = 12;
    if (i % 2 == 0) {
      student.gender = 'Male';
    } else {
      student.gender = 'Female';
    }
    student.grade = null;
    student.score = 8;

    studentsList.add(student);
  }
}

void createTeachersList(teachersList) {
  for (int i = 1; i <= 3; i++) {
    Teacher teacher = Teacher();

    teacher.id = i;
    teacher.name = "Teacher $i";
    teacher.age = 40;
    if (i % 2 == 0) {
      teacher.gender = 'Male';
    } else {
      teacher.gender = 'Female';
    }
    teacher.subject = 'General subject';
    teacher.salary = 15000000;

    teachersList.add(teacher);
  }
}

void showClassroomsListInfo(classroomsList) {
  for (var classroom in classroomsList) {
    classroom.showClassInfo();
    print('\n');
  }
}

void showStudentsListInfo(studentsList) {
  for (var student in studentsList) {
    student.showStudentInfo();
  }
}

void showTeachersListInfo(teachersList) {
  for (var teacher in teachersList) {
    teacher.showTeacherInfo();
  }
}

void showAverageScore(studentsList) {
  for (var student in studentsList) {
    print("ID: ${student.id} - Name: ${student.name} - Grade: ${student.grade} - Score: ${student.score}");
  }
}

int isValidNumber() {
  while (true) {
    try {
      var input = stdin.readLineSync();
      if (input == null) {
        print("Input cannot be null.");
        continue;
      }

      int value = int.parse(input.toString());
      if (value <= 0) {
        print("Value cannot be negative.");
        continue;
      }

      return value;
    } catch (e) {
      print("Invalid number. Please enter a valid number.");
    }
  }
}