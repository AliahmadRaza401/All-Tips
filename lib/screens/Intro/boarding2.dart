import 'package:altipzz/screens/Intro/boarding3.dart';
import 'package:altipzz/utils/app_colors.dart';
import 'package:altipzz/utils/app_images.dart';
import 'package:flutter/material.dart';

class BoardingTwo extends StatelessWidget {
  const BoardingTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.AppBluecolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.08),
              child: Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushNamed(Option.routename);
                  },
                  child: const Text(
                    "Skip    ",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.08,
            ),
            Center(
              child: Image.asset(
                AppImages().HandMobile,
                fit: BoxFit.fill,
                height: 230,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.10,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              width: MediaQuery.of(context).size.width * 100,
              height: MediaQuery.of(context).size.height / 3,
              child: Column(
                children: [
                  _myTextWidget("Safest Platform", 0xFF000000, FontWeight.w700,
                      29, 45, 30, 30),
                  _myTextWidget("Multiple verification and face ID makes",
                      0xFFAAAAAA, FontWeight.w400, 19, 10, 8, 8),
                  _myTextWidget("Your account more safely", 0xFFAAAAAA,
                      FontWeight.w400, 19, 0, 12, 12),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => BoardingThree(),
                        ),
                      );
                      // Navigator.of(context)
                      //     .pushNamed(BoardingThree.routename);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                      ),
                      child: const Center(
                        child: Text(
                          "Next",
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
                  )
                ],
              ),
            ),
          ],
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
