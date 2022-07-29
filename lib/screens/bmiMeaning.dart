import 'package:bmi/constants/app_constants.dart';
import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(title: Text('BMI'), centerTitle: true),
    //   body: Text('Body mass index. A measure that relates body weight to height.\n BMI is sometimes used to measure total body fat and whether a person is a healthy weight. Excess body fat is linked to an increased risk of some diseases including heart disease and some cancers. Also called body mass index.'),
    // );
    return SafeArea(
      child: Container(
        child: Text(
          'Body mass index. A measure that relates body weight to height.\n BMI is sometimes used to measure total body fat and whether a person is a healthy weight. Excess body fat is linked to an increased risk of some diseases including heart disease and some cancers. Also called body mass index.',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: accentHexColor,
            decoration: TextDecoration.none,
          ),
        ),
      ),
    );
  }
}
