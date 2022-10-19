import 'dart:async';

import 'package:altipzz/screens/Intro/boarding1.dart';
import 'package:altipzz/screens/home_screen.dart';
import 'package:altipzz/screens/sign_up.dart';
import 'package:altipzz/utils/app_colors.dart';
import 'package:altipzz/utils/app_images.dart';
import 'package:flutter/material.dart';




class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double? latitude1;
  var longitude1;

  @override
  void initState() {
    // _getlocation();
    // getLogs();
    super.initState();
    startTime();
  }

  // _getlocation() {
  //   Location location = Location();
  //   location.getLocation().then((value) {
  //     setState(() {
  //       latitude1 = value.latitude;
  //       longitude1 = value.longitude;

  //       print('latitude mine : $latitude1');
  //       print('longitude mine: $longitude1');
  //     });
  //   });
  // }

  // getLogs() async {
  //   logs = false;
  //   SharedPreferences mypref = await SharedPreferences.getInstance();
  //   var y = mypref.getString('abs');
  //   // print("$logs");
  //   print(" Abs = $y");
  //   if (y != null) {
  //     stringValue = y;
  //     logs = true;
  //   }
  // }

  startTime() async {
    var duration = const Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    // if (logs) {
    //   setState(() {
    //     buildLOcation();
    //   });
      
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => Boardingone(),
        ),
      );
    // } else {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //       builder: (BuildContext context) => const Boardingone(),
    //     ),
    //   );
    // }
  }

  // buildLOcation() async {
  //   try {
  //     var url = 'http://all-tipz.weanio.com/public/api/location/save';
  //     var response = await http.post(
  //       Uri.parse(url),
  //       body: {
  //         'lat': latitude1.toString(),
  //         'long': longitude1.toString(),
  //       },
  //       headers: {
  //         'Authorization': 'Bearer $stringValue',
  //         'Accept': 'application/json',
  //       },
  //     );
  //     print('buildLocationResponse: ${response.body}');
  //     Map data = json.decode(response.body);
  //     if (data['success'] == true) {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (BuildContext context) => const Home(),
  //         ),
  //       );
  //     } else {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (BuildContext context) => const Home(),
  //         ),
  //       );
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }
 
  // _navigateTologin() async {
  //   await Future.delayed(
  //     const Duration(
  //       milliseconds: 3500,
  //     ),
  //     () {
  //       Navigator.pushReplacement(
  //         context,
  //         MaterialPageRoute(
  //           builder: (context) => Boardingone(),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: AppColors.AppBluecolor,
      body: Center(
        child: Image.asset(AppImages().splashscreen),
      ),
    );
  }
}
