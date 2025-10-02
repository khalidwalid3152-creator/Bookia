import 'package:bookia/constants/routes/Routes.dart';
import 'package:bookia/constants/routes/route.dart';
import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class done extends StatelessWidget {
  const done({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Appimages.success, width: 100),
              Gap(40),
              Text('Password Changed!', style: textstyles.size30()),
              Text(
                'Your password has been changed ',
                style: textstyles.size16(color: Appcolors.textcolor),
              ),
              Text(
                'successfully.',
                style: textstyles.size16(color: Appcolors.textcolor),
              ),
              Gap(10),
              _Button(context),
            ],
          ),
        ),
      ),
    );
  }
}

ElevatedButton _Button(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Appcolors.orangecolor,
      foregroundColor: Appcolors.bgtext,
      minimumSize: Size(double.infinity, 70),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    onPressed: () {
      PushTo(context, Routes.login);
    },
    child: Text('Back to login', style: textstyles.size16()),
  );
}
