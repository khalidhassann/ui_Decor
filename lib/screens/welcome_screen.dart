import 'package:decor_app/constants/constants.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: ScreenSize(context).height,
        width: double.infinity,
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
              child: Image.asset('lib/assets/icons/icon-09.png',
                  width: ScreenSize(context).width * 0.75,
                  height: ScreenSize(context).height * 0.85),
            ),
            Positioned(
              top: ScreenSize(context).height * 0.18,
              left: ScreenSize(context).width * 0.30,
              child: Text("Decor &", style: txtStyleHeavy),
            ),
            Positioned(
              top: ScreenSize(context).height * 0.23,
              left: ScreenSize(context).width * 0.35,
              child: Text("enjoy!", style: txtStyleHeavy),
            ),
            Positioned(
              top: ScreenSize(context).height * 0.73,
              child: ElevatedButton(
                style: btnStyle,
                onPressed: () {
                  Navigator.pushNamed(context, '/login');
                },
                child: Text("Get started"),
              ),
            ),
            Positioned(
              top: ScreenSize(context).height * 0.85,
              left: ScreenSize(context).width * 0.15,
              child: Text("Already have an account?", style: txtStyleLight),
            ),
            Positioned(
              top: ScreenSize(context).height * 0.8543,
              left: ScreenSize(context).width * 0.715,
              child: Text(
                "Sign in",
                style: txtStyleHeavy,
                textScaleFactor: 0.33,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
