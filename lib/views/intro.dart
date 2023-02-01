// ignore_for_file: prefer_const_constructors

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:get/get.dart';
import 'package:shahab_task/views/home.dart';

class Intro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
         final _h = MediaQuery.of(context).size.height;
        final _w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: OnBoardingSlider(
        finishButtonText: "Start",
        finishButtonColor: Colors.blue[900],
        onFinish: () {
          Get.to(SimpleAnimatedList());
        },
        hasSkip: true,
        skipTextButton: Text(
          "Skip",
          style: TextStyle(color: Colors.white30),
        ),
        totalPage: 3,
        headerBackgroundColor: Colors.grey[800],
        pageBackgroundColor: Colors.grey[800],
        background: [
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal:_w*0.2),
              child: Image.asset(
                'assets/1.png',
                height: 400,
                alignment: Alignment.center,
                fit: BoxFit.cover,
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: _w*0.2),
              child: Image.asset(
                'assets/2.png',
                height: 400,
                alignment: Alignment.center,
              ),
            ),
          ),
          DelayedDisplay(
            delay: Duration(milliseconds: 800),
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(horizontal: _w*0.2),
              child: Image.asset(
                'assets/3.png',
                height: 400,
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
        speed: 0.8,
        pageBodies: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                DelayedDisplay( 
                  delay: Duration(seconds: 1),
                  child: Text(
                    'Welcome...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: kDarkBlueColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 1300),
                  child: Text(
                    'This is the Task App Built by Shahab Alam',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  child: Text(
                    'You’ve reached your destination.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: kDarkBlueColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 1300),
                  child: Text(
                    'It updates array in ListView and Deletes its values from array with GetX',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: <Widget>[
                SizedBox(
                  height: 480,
                ),
                DelayedDisplay(
                  delay: Duration(seconds: 1),
                  child: Text(
                    'Start now!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      // color: kDarkBlueColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                DelayedDisplay(
                  delay: Duration(milliseconds: 1300),
                  child: Text(
                    'Start the App and update array to get the Animated ListView.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white38,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
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
