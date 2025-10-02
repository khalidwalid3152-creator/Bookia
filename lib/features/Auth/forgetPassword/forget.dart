import 'package:bookia/constants/routes/Routes.dart';
import 'package:bookia/constants/routes/route.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Forget extends StatelessWidget {
  const Forget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Forgot Password?', style: textstyles.size30()),
            Gap(10),
            Text(
              'Dont worry! It occurs. Please enter the email \n address linked with your account',
              style: textstyles.size16(color: Appcolors.textcolor),
            ),
            Gap(30),
            _Email(),
            Gap(30),
            _Button(context),
            Gap(450),
            _bottom(context),
          ],
        ),
      ),
    );
  }
}

Widget _bottom(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Remember Password?', style: textstyles.size16()),
      TextButton(
        onPressed: () {
          PushTo(context, Routes.login);
        },
        child: Text(
          'Login ',
          style: textstyles.size16(color: Appcolors.orangecolor),
        ),
      ),
    ],
  );
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
      PushTo(context, Routes.otp);
    },
    child: Text('Send Code', style: textstyles.size16()),
  );
}

TextFormField _Email() {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(25),
      fillColor: Appcolors.bgtext,
      filled: true,
      label: Text(
        'Email',
        style: textstyles.size16(color: Appcolors.textcolor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Appcolors.textborder, width: 1),
      ),
    ),
  );
}
