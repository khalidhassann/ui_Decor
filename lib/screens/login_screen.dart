import 'package:decor_app/constants/constants.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
              bottom: ScreenSize(context).height * 0.6,
              child: Image.asset(
                'lib/assets/icons/icon-08.png',
                width: 187.5,
                height: 406,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.68,
              child: Text(
                "Find your",
                style: txtStyleHeavy,
                textScaleFactor: 0.7,
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.64,
              child: Text(
                "unique piece!",
                style: txtStyleHeavy,
                textScaleFactor: 0.7,
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.61,
              child: Text(
                "Join us,",
                style: txtStyleLight,
                textScaleFactor: 0.9,
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.5,
              child: Container(
                width: 320,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'E-mail',
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.4,
              child: Container(
                width: 320,
                child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Password',
                    )),
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.3,
              child: ElevatedButton(
                  style: btnStyle,
                  onPressed: () {
                    Navigator.pushNamed(context, '/products');
                  },
                  child: Text("Create Account")),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.24,
              child: Text(
                "Sign up with",
                style: txtStyleHeavy,
                textScaleFactor: 0.33,
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.02,
              child: Image.asset(
                'lib/assets/icons/icon-01.png',
                width: 112.5,
                height: 243.6,
                alignment: Alignment.center,
              ),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.07,
              left: ScreenSize(context).width * 0.14,
              child: Text("Already have an account?", style: txtStyleLight),
            ),
            Positioned(
              bottom: ScreenSize(context).height * 0.074,
              left: ScreenSize(context).width * 0.705,
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
