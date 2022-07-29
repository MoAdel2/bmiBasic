import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi/constants/app_constants.dart';
import 'package:bmi/widgets/left_bar.dart';
import 'package:bmi/widgets/right_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _heightController = TextEditingController();
  TextEditingController _weightController = TextEditingController();
  double _bmiResult = 0;
  String _textResult = "";
  String _image = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: accentHexColor, fontWeight: FontWeight.w300),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      backgroundColor: mainHexColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('What is BMI?', style: TextStyle(color: accentHexColor)),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 130,
                  child: TextField(
                    controller: _heightController,
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.w300, color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Height",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 130,
                  child: TextField(
                    controller: _weightController,
                    style: TextStyle(fontSize: 42, fontWeight: FontWeight.w300, color: accentHexColor),
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Weight",
                      hintStyle: TextStyle(
                        fontSize: 42,
                        fontWeight: FontWeight.w300,
                        color: Colors.white.withOpacity(0.8),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                double _h = double.parse(_heightController.text);
                double _w = double.parse(_weightController.text);
                setState(() {
                  _bmiResult = _w / (_h * _h);
                  if (_bmiResult > 25) {
                    _textResult = "you're over weight";
                    _image = 'images/overWeight.jpg';
                  } else if (_bmiResult >= 18.5 && _bmiResult <= 25) {
                    _textResult = "you have a normal weight";
                    _image = 'images/normalWeight.jpg';
                  } else {
                    _textResult = "You're under Weight";
                    _image = 'images/underWeight.jpg';
                  }
                });
              },
              child: Text(
                "Calculate",
                style: TextStyle(color: accentHexColor, fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Container(
              child: Text(
                _bmiResult.toStringAsFixed(2),
                style: TextStyle(
                  color: accentHexColor,
                  fontSize: 80,
                ),
              ),
            ),
            SizedBox(height: 10),
            Visibility(
              visible: _textResult.isNotEmpty,
              child: Column(children: [
                Container(
                  child: Text(
                    _textResult,
                    style: TextStyle(color: accentHexColor, fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                ),
                Image.asset(
                  _image,
                  height: 200,
                  width: 150,
                ),
              ]),
            ),
            SizedBox(height: 10),
            LeftBar(barWidth: 40),
            SizedBox(height: 20),
            LeftBar(barWidth: 70),
            SizedBox(height: 20),
            LeftBar(barWidth: 40),
            SizedBox(height: 10),
            RightBar(barWidth: 30),
            SizedBox(height: 30),
            RightBar(barWidth: 30),
          ],
        ),
      ),
    );
  }
}
