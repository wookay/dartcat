import 'package:test/test.dart';

class Course
{
  String title;
  String grade;
  Course(this.title, this.grade);
}

class Student
{
  String name;
  List<Course> courses;

  Student(this.name, [this.courses = const []]);
}

void main() {
  test('s1', () {
    Student s1 = new Student("foo");
    expect(s1.name, "foo");
    expect(s1.courses, []);
    expect(true, s1.courses is List<Course>);
  });

  test('s2', () {
    Student s2 = new Student("bar");
    expect(s2.runtimeType, Student);
    expect(true, s2.courses is List<Course>);
    expect(s2.courses.length, 0);
  });

  test('s3', () {
    var courses = [Course("math", "")];
    Student s3 = new Student("baz", courses);
    expect(s3.courses, courses);
    expect(s3.courses[0].title, "math");
  });
}
