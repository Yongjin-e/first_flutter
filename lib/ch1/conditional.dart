class Conditional {
  Conditional() {
    int r = conditionalIf(50);
    print('Conditionnal r : $r');

    String result = testGrade(80);
    print('testGrade result : $result');
  }

  int conditionalIf(int value) {
    int result = 0;

    if (value > 90) {
      result = -10;
    } else {
      result = 10;
    }

    return result;
  }

  String testGrade(int score) {
    String grade = 'F';

    if (score >= 90) {
      grade = 'A';
    } else if (score >= 80) {
      grade = 'B';
    } else if (score >= 70) {
      grade = 'C';
    }

    return grade;
  }
}
