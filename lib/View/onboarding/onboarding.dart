import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:food_app/View/RegistrationProcess/Sign_up_Page.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(scaffoldBackgroundColor: Colors.white),
      home: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        pageBackgroundColor: Colors.white,
        onFinish: () {
          Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpPage(),
              ));
        },
        finishButtonText: 'Next',
        controllerColor: Colors.black,
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.green,
        ),
        background: [
          Image.asset('assets/Illustartion.png'),
          Image.asset('assets/onboarding3.png'),
        ],
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Find your  Comfort\n        Food here',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25),
                Text(
                  'Here You Can find a chef or dish for every\n                 taste and color. Enjoy!',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                Text(
                  'Food Ninja is Where Your \n     Comfort Food Lives',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 25),
                Text(
                  'Enjoy a fast and smooth food delivery at\n                     your doorstep',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
