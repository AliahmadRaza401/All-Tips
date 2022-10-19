import 'dart:async';
import 'dart:io';
import 'package:altipzz/screens/home_screen.dart';
import 'package:altipzz/screens/sign_in.dart';
import 'package:altipzz/utils/app_colors.dart';
import 'package:altipzz/utils/app_images.dart';
import 'package:flutter/material.dart';

// PlatformFile? file;

class SignUp extends StatefulWidget {
  static const routename = "/SignUp";
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _isObscure = false;
  // final input = TextEditingController();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController conformPassword = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            // height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.06,
              right: MediaQuery.of(context).size.width * 0.06,
            ),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: GestureDetector(
                      onTap: () async {
                        // FilePickerResult? result =
                        //     await FilePicker.platform.pickFiles();
                        // if (result == null) {
                        //   return;
                        // } else {
                        //   file = result.files.first;
                        //   setState(() {
                        //     print(file);
                        //   });
                        // }
                      },
                      child:
                          //  file != null
                          //     ? CircleAvatar(
                          //         radius: 30,
                          //         backgroundImage:
                          //             FileImage(File(file!.path.toString())),
                          //       )
                          //     :
                          CircleAvatar(
                        radius: 30,
                        backgroundColor: AppColors.white,
                        backgroundImage: AssetImage(AppImages().addimg),
                      )),
                  // Image.asset(
                  //   splashscreen,
                  //   color: AppColors.AppBluecolor,
                  //   height: 100,
                  // ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                // TextFormField(
                //   controller: input,
                //   decoration: const InputDecoration(
                //     border: UnderlineInputBorder(),
                //     labelText: 'Your email',
                //   ),
                // ),

                _texfieldWidget(name, 'Your Name'),
                _texfieldWidget(email, 'Your Email'),
                _texfieldWidget(password, 'Your Password'),
                _texfieldWidget(conformPassword, 'Conform password'),
                _texfieldWidget(country, 'Your Country'),
                _texfieldWidget(state, 'Your State'),
                _texfieldWidget(city, 'Your City'),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                _myTextWidget("By creating an account, you accept our Terms",
                    0xFF757575, FontWeight.w500, 17, 5, 0, 0),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushNamed(NameSignUp.routename);
                    print("Name is :${name.text}");
                    print("email : ${email.text}");
                    print("password : ${password.text}");
                    print("conformPassword : ${conformPassword.text}");
                    print("country : ${country.text}");
                    print("state : ${state.text}");
                    print("city : ${city.text}");
                    signupp(context);
                  },
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.03,
                      ),
                      child: const Center(
                        child: Text(
                          "SignUp",
                          style: TextStyle(fontSize: 19, color: Colors.white),
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
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already have an account?",
                        style: TextStyle(
                          fontSize: 17,
                          color: AppColors.lightGreyText,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                            Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) =>LogIn(),
        ),
      );
                          // Navigator.of(context).pushNamed(LogIn.routename);
                             
   
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 19,
                            color: AppColors.AppBluecolor,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.16,
                ),
                const Center(
                  child: Text(
                    "or continue with",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.lightGreyText,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.08,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _NavigateButton(AppImages().fb, "Facebook"),
                      _NavigateButton(AppImages().google, "Google"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _texfieldWidget(
    TextEditingController _value,
    String _label,
  ) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.01,
      ),
      child: TextFormField(
        // controller: ,
        validator: (value) {
          if (value!.isEmpty) {
            return "This field is required";
          } else {
            return null;
          }
        },
        onChanged: (value) {
          _value.text = value;
        },
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: _label,
        ),
      ),
    );
  }

  signupp(context) async {
       Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => LogIn(),
        ),
      );
    //   MultipartFile img;

    //   if (file != null) {
    //     img = await MultipartFile.fromFile(file!.path.toString());
    //     Timer(const Duration(seconds: 1), () async {
    //       try {
    //         var formData = FormData.fromMap({
    //           "name": "${name.text}",
    //           "email": "${email.text}",
    //           "password": "${password.text}",
    //           "c_password": "${conformPassword.text}",
    //           "country": "${country.text}",
    //           "state": "${state.text}",
    //           "city": "${city.text}",
    //           "image": img,
    //         });

    //         Dio dio = Dio();

    //         print({
    //           "name": "${name.text}",
    //           "email": "${email.text}",
    //           "password": "${password.text}",
    //           "c_password": "${conformPassword.text}",
    //           "country": "${country.text}",
    //           "state": "${state.text}",
    //           "city": "${city.text}",
    //           "image": file,
    //         });
    //         var response = await dio.post(
    //             "https://all-tipz.weanio.com/public/api/register",
    //             data: formData);
    //         print("Response: $response");

    //         Map info = response.data;
    //         // print('gg = $gg');
    //         print('message = ${info['message']}');
    //         if (info['message'] == 'Profile Create Successfully') {
    //           showAlertDialog(context, info['message']);
    //         } else {
    //           showAlertDialog(context, info['message']);
    //         }
    //       } on DioError catch (e) {
    //         // The request was made and the server responded with a status code
    //         // that falls out of the range of 2xx and is also not 304.
    //         if (e.response != null) {
    //           print(e.response);
    //           showAlertDialog(context, e.message);
    //         } else {
    //           showAlertDialog(context, e.message);
    //           print(e.message);
    //         }
    //       }
    //     });
    //   } else {
    //     showAlertDialog(context, 'some data is missing');
    //   }
    // }
  }

  showAlertDialog(BuildContext context, String _information) {
    String data = _information;
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        // (data == 'Profile Create Successfully')
        //     ? Navigator.pushReplacement(
        //         context,
        //         MaterialPageRoute(builder: (BuildContext context) => LogIn()),
        //       )
        //     : Navigator.of(context).pop();
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Message"),
      content: Text(_information),
      actions: [okButton],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
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

  Widget _NavigateButton(String img, String label) {
    return Container(
      height: MediaQuery.of(context).size.height / 12,
      width: MediaQuery.of(context).size.width / 2.5,
      padding: EdgeInsets.only(left: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppColors.lightGrey, width: 2),
        color: AppColors.white,
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: AppColors.lightGrey, width: 2),
              color: AppColors.lightGrey,
            ),
            child: Image.asset(
              img,
              height: 80,
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.02,
          ),
          Text(
            label,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
