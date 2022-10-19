import 'package:altipzz/screens/sign_in.dart';
import 'package:altipzz/screens/sign_up.dart';
import 'package:altipzz/utils/app_colors.dart';
import 'package:altipzz/utils/app_images.dart';
import 'package:flutter/material.dart';

class Option extends StatelessWidget {
  static const routename = "/home-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppBluecolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  AppImages().homescreen,
                  fit: BoxFit.contain,
                ),
              ),
              Center(
                child: _myTextWidget("A new way to trip", 0xFFFFFFFF,
                    FontWeight.w600, 30, 15, 0, 0),
              ),
              _myTextWidget("Securly & more faster", 0xFFFFFFFF,
                  FontWeight.w600, 30, 2, 7, 7),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(LogIn.routename);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => LogIn(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.03,
                  ),
                  child: const Center(
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: MediaQuery.of(context).size.height * 0.08,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(74, 167, 253, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  // Navigator.of(context).pushNamed(SignUp.routename);
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => SignUp(),
                    ),
                  );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: _myTextWidget(
                      "Sign Up", 0xFFFFFFFF, FontWeight.w600, 20, 25, 0, 0),
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _myTextWidget(
  String text,
  int colorCode,
  FontWeight fontWeight,
  double fontsize,
  double top,
  double left,
  double right,
) {
  return Container(
    margin: EdgeInsets.only(top: top, left: left, right: right),
    child: Text(
      text,
      style: TextStyle(
          color: Color(
            colorCode,
          ),
          fontWeight: fontWeight,
          fontSize: fontsize),
    ),
  );
}
