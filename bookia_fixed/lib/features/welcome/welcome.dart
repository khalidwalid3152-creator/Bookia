import 'package:bookia/constants/routes/Routes.dart';
import 'package:bookia/constants/routes/route.dart';
import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:bookia/utils/styles.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            Appimages.bg,
            fit: BoxFit.fill,
            width: double.infinity,
            height: double.infinity,
          ),
          Positioned(
            top: 150,
            left: 20,
            right: 20,
            child: Column(
              children: [
                SvgPicture.asset(Appimages.logo2),
                SizedBox(height: 20),
                Text(
                  'Order Your Book Now!',
                  style: TextStyle(fontSize: 18, fontFamily: 'DMSerifDisplay'),
                ),
                Gap(420),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Appcolors.orangecolor,
                    foregroundColor: Appcolors.bgtext,
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    PushTo(context, Routes.login);
                  },
                  child: Text('login', style: textstyles.size16()),
                ),
                Gap(20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    side: BorderSide(color: Appcolors.dark),
                    backgroundColor: Appcolors.bgtext,
                    foregroundColor: Appcolors.bgtext,
                    minimumSize: Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    PushTo(context, Routes.register);
                  },
                  child: Text(
                    'Register',
                    style: textstyles.size16(color: Appcolors.dark),
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
