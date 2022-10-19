import 'dart:async';
import 'package:altipzz/screens/home_screen.dart';
import 'package:altipzz/screens/sign_up.dart';
import 'package:altipzz/utils/app_colors.dart';
import 'package:altipzz/utils/app_images.dart';
import 'package:flutter/material.dart';

TextEditingController email = TextEditingController();
TextEditingController password = TextEditingController();

class LogIn extends StatefulWidget {
  static const routename = "/LogIn";
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  bool _isObscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.06,
              right: MediaQuery.of(context).size.width * 0.06,
            ),
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.02),
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    AppImages().splashscreen,
                    color: AppColors.AppBluecolor,
                    height: 80,
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.02,
                ),
                // TextFormField(
                //   validator: (value) {
                //     if (value!.isEmpty) {
                //       return "This field is required";
                //     } else {
                //       return null;
                //     }
                //   },
                //   onChanged: (value) {
                //     _value.text = value;
                //   },
                //   decoration: const InputDecoration(
                //     border: UnderlineInputBorder(),
                //     labelText: 'Your email',
                //   ),
                // ),
                _texfieldWidget(email, 'Your Email'),
                _texfieldWidget(password, 'Your Password'),
                // SizedBox(
                //   height: MediaQuery.of(context).size.height * 0.03,
                // ),
                // TextFormField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     suffixIcon: IconButton(
                //       icon: Icon(
                //         _isObscure ? Icons.visibility : Icons.visibility_off,
                //       ),
                //       onPressed: () {
                //         setState(
                //           () {
                //             _isObscure = !_isObscure;
                //           },
                //         );
                //       },
                //     ),
                //     border: UnderlineInputBorder(),
                //     labelText: 'Password',
                //   ),
                // ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.03,
                ),
                GestureDetector(
                  onTap: () {
                    // Navigator.of(context).pushNamed(RestPassword.routename);
                  },
                  child: const Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      "Forget Password?",
                      style: TextStyle(
                        fontSize: 16,
                        color: AppColors.AppBluecolor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print("email : ${email.text}");
                    print("password : ${password.text}");

                    logIn(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                    ),
                    child: const Center(
                      child: Text(
                        "Log in",
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
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.04,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "New to wpay?",
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
                              builder: (BuildContext context) => SignUp(),
                            ),
                          );
                          // Navigator.of(context).pushNamed(SignUp.routename);
                        },
                        child: const Text(
                          "Sign Up",
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
                  height: MediaQuery.of(context).size.height * 0.06,
                ),
                const Center(
                  child: Text(
                    "or login with",
                    style: TextStyle(
                      fontSize: 18,
                      color: AppColors.lightGreyText,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 9,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _NavigateButton(context, AppImages().fb, "Facebook"),
                      _NavigateButton(context, AppImages().google, "Google"),
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
}

Widget _texfieldWidget(
  TextEditingController _value,
  String _label,
) {
  return Container(
    margin: EdgeInsets.only(
      top: 5,
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

logIn(context) async {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (BuildContext context) => HomeScreen(),
    ),
  );
  // if (email != null && password != null) {
  //   Timer(const Duration(seconds: 1), () async {
  //     try {
  //       var formData = FormData.fromMap({
  //         "email": "${email.text}",
  //         "password": "${password.text}",
  //       });

  //       Dio dio = Dio();
  //       dio.options.headers['Accept'] = 'application/json';
  //       print({
  //         "email": "${email.text}",
  //         "password": "${password.text}",
  //       });
  //       var response = await dio.post(
  //           "https://all-tipz.weanio.com/public/api/login",
  //           data: formData);
  //       print("Response: $response");

  //       Map info = response.data;
  //       print('info = $info');
  //       print('message = ${info['message']}');
  //       if (info['message'] == 'Login Successfully') {
  //         stringValue = info['access_token'];
  //         SharedPreferences mypref = await SharedPreferences.getInstance();
  //         mypref.setString('abs', '$stringValue');
  //         print("$stringValue");
  //         showAlertDialog(
  //           context,
  //           'Login Successfully',
  //         );
  //       } else {
  //         showAlertDialog(
  //           context,
  //           'Login Failed',
  //         );
  //       }
  //     } on DioError catch (e) {
  //       if (e.response != null) {
  //         print(e.response);
  //         showAlertDialog(context, e.message);
  //       } else {
  //         print(e.message);
  //         showAlertDialog(context, e.message);
  //       }
  //     }
  //   });
  // } else {
  //   print("Email or Password is Missing");
  //   showAlertDialog(context, "Email or Password is Missing");
  // }
}

showAlertDialog(BuildContext context, String _information) {
  String data = _information;
  Widget okButton = TextButton(
    child: const Text("OK"),
    onPressed: () {
      (data == 'Login Successfully')
          ? Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => HomeScreen()),
            )
          : Navigator.of(context).pop();
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text("Message"),
    content: Text(_information),
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

Widget _NavigateButton(context, String img, String label) {
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
