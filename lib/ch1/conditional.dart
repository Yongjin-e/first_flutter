class Conditional {
  Conditional() {
    int r = conditionalIf(50);
    print('Conditionnal r : $r');

    String result = testGrade(80);
    print('testGrade result : $result');

    String result2 = testSwitch(90);
    print('testSwitch result2 : $result2');
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

  String testSwitch(int score) {
    String grade = 'F';

    switch (score) {
      case 90:
        grade = 'A';
        break;
      case 80:
        grade = 'B';
        break;
      case 70:
        grade = 'C';
        break;
      default:
        grade = 'no data';
        break;
    }

    return grade;
  }
}
