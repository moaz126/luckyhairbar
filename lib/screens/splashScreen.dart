import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:luckyhairbar/screens/bottomNavigationBart.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  getstate() async {
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => navBar(
                      index: 0,
                    ))));
    /*  var isLogin = await getUserLoggedIn();
    await DataApiService.instance.getFiltersList(context);

    if (isLogin) {
      String? token = await getUserDataToken();
      USER_TOKEN.value = token!;
      print('true');
      await DataApiService.instance.getprofileinfo(context);

      Timer(
          Duration(seconds: 2),
          () => Get.to(() =>
              HomePage()) /* Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomePage())) */
          );
    } else {
      print('false');
      await getUserFirstTime() == false
          ? Timer(
              Duration(seconds: 3),
              () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => SignIn())))
          : Timer(
              Duration(seconds: 3),
              () => Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => OnBoardingPage())));
    } */
  }

  @override
  void initState() {
    super.initState();
    getstate();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: Colors.white),
        child: SizedBox(
            width: 70.w,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Image.asset(
                "assets/images/luckyhair.png",
                height: 30,
                fit: BoxFit.contain,
              ),
            )));
  }
}
