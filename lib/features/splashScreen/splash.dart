import 'package:bookia/features/welcome/welcome.dart';
import 'package:bookia/images/appImages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState()   {
    super.initState();
     Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) =>const Welcome()),
      );
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(Appimages.logo2),
            SizedBox(height: 5),
            Text(
              'Order Your Book Now!',
              style: TextStyle(fontSize: 18, fontFamily: 'DMSerifDisplay'),
            ),
          ],
        ),
      ),
    );
  }
}
