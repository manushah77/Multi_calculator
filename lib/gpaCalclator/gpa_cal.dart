import 'package:flutter/material.dart';

class CGPACalculator extends StatefulWidget {
  @override
  _CGPACalculatorState createState() => _CGPACalculatorState();
}

class _CGPACalculatorState extends State<CGPACalculator> {
  List<Course> courses = [];

  TextEditingController courseNameController = TextEditingController();
  TextEditingController creditHoursController = TextEditingController();
  TextEditingController gradeController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.black,
          ),
        ),
        title: Text(
          'CGPA Calculator',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10),

                TextFormField(
                  controller: courseNameController,
                  decoration: InputDecoration(
                    labelText: 'Course Name',
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  validator: (_) {
                    if (_ == null || _ == '') {
                      return 'Enter Course Name';
                    }
                  },
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: creditHoursController,
                  decoration: InputDecoration(
                    labelText: 'Credit Hours',
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                  validator: (_) {
                    if (_ == null || _ == '') {
                      return 'Enter Credit Hours';
                    }
                  },
                ),
                SizedBox(height: 10),

                TextFormField(
                  controller: gradeController,
                  decoration: InputDecoration(
                    labelText: 'Grade',
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.grey.withOpacity(0.4),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(
                        color: Colors.black38,
                      ),
                    ),
                  ),
                  validator: (_) {
                    if (_ == null || _ == '') {
                      return 'Enter Grade';
                    }
                  },
                ),
                SizedBox(height: 20),

                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  height: 50,
                  color: Colors.green,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      addCourse();
                      setState(() {});
                    }
                  },
                  child: Text(
                    'Add & Caculate',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                // SizedBox(height: 10),
                // MaterialButton(
                //   color: Colors.blue,
                //
                //   onPressed: () {
                //     calculateCGPA();
                //     setState(() {});
                //   },
                //   child: Text('Calculate CGPA'),
                // ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Subject',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Credit Hours',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Grade',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 1,
                        blurRadius: 1,
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: ListView.builder(
                      itemCount: courses.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                child: Text(
                                  courses[index].courseName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16),
                                ),
                                width: 140,
                              ),
                              Container(
                                child:
                                    Text(courses[index].creditHours.toString()),
                                width: 80,
                              ),
                              Container(
                                child: Text(
                                  courses[index].grade,
                                  textAlign: TextAlign.end,
                                ),
                                width: 60,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        );
                      }),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CGPA: ${calculateCGPA()}',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        courses.clear();
                        setState(() {});
                      },
                      child: Text(
                        'Clear log',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void addCourse() {
    String courseName = courseNameController.text;
    double creditHours = double.tryParse(creditHoursController.text) ?? 0.0;
    String grade = gradeController.text;

    Course course = Course(courseName, creditHours, grade);
    courses.add(course);

    courseNameController.clear();
    creditHoursController.clear();
    gradeController.clear();
  }

  double calculateCGPA() {
    double totalCreditPoints = 0;
    double totalCredits = 0;

    for (var course in courses) {
      double gradePoints = getGradePoints(course.grade);
      totalCreditPoints += gradePoints * course.creditHours;
      totalCredits += course.creditHours;
    }

    if (totalCredits == 0) {
      return 0.0;
    }

    double cgpa = totalCreditPoints / totalCredits;
    return cgpa;
  }

  double getGradePoints(String grade) {
    switch (grade) {
      case 'A':
        return 4.0;
      case 'a':
        return 4.0;
      // case 'A-':
      //   return 3.7;
      case 'B':
        return 3.2;
      case 'b':
        return 3.2;
      // case 'B':
      //   return 3.0;
      // case 'B-':
      //   return 2.7;
      case 'C':
        return 2.5;
      case 'c':
        return 2.5;
      // case 'C':
      //   return 2.0;
      // case 'C-':
      //   return 1.7;
      // case 'D':
      //   return 1.3;
      case 'D':
        return 1.0;
      case 'd':
        return 1.0;
      case 'F':
        return 0.0;
      case 'f':
        return 0.0;
      default:
        return 0.0;
    }
  }
}

class Course {
  String courseName;
  double creditHours;
  String grade;

  Course(this.courseName, this.creditHours, this.grade);
}
