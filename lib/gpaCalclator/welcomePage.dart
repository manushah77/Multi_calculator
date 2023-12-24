import 'package:calculator_plus_cgpa_calculaotr/gpaCalclator/gpa_cal.dart';
import 'package:calculator_plus_cgpa_calculaotr/main.dart';
import 'package:flutter/material.dart';

class WelcomeBackScreen extends StatefulWidget {
  const WelcomeBackScreen({super.key});

  @override
  State<WelcomeBackScreen> createState() => _WelcomeBackScreenState();
}

class _WelcomeBackScreenState extends State<WelcomeBackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            Text(
              'WelCome back',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 200,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              height: 50,
              minWidth: 250,
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
              },
              child: Text(
                'Simple Calculator',
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MaterialButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              height: 50,
              minWidth: 250,

              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>CGPACalculator()));
              },
              child: Text(
                'CGPA Calculator',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
