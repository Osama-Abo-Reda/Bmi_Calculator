import 'package:flutter/material.dart';

class BmiResultSreen extends StatelessWidget {
  final bool isMale;
  final int age;
  final int result;

  const BmiResultSreen(
      {Key? key, required this.age, required this.isMale, required this.result})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'BMI Result',
          style: TextStyle(
            letterSpacing: 1.0,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[100],
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: 400.0,
          height: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              10,
            ),
            color: Colors.grey[400],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender : ${isMale ? 'Male' : 'Female'}',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Result : $result',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Text(
                'Age : $age',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[100],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
