import 'package:bookia/features/forgetPassword/forget.dart';
import 'package:bookia/features/register/register.dart';
import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'Welcome back! Glad \n to see you, Again!',
              style: textstyles.size30(),
            ),
            Gap(30),
            _nameField(),
            Gap(20),
            _PasswordField(),
            _forget(context),
            Gap(30),
            _Button(context),
            Gap(20),
            Image.asset(Appimages.or, width: double.infinity),
            Gap(20),
            _googleAndApple(),
            Gap(100),
            _bottom(context),
          ],
        ),
      ),
    );
  }

  Widget _bottom(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Don’t have an account?', style: textstyles.size14()),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => register()),
            );
          },
          child: Text(
            'Register Now',
            style: textstyles.size14(color: Appcolors.orangecolor),
          ),
        ),
      ],
    );
  }

  Column _googleAndApple() {
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            Appimages.googleButton,
            width: double.infinity,
            fit: BoxFit.contain,
          ),
        ),
        Gap(10),
        GestureDetector(
          onTap: () {},
          child: Image.asset(
            Appimages.appleButton,
            width: double.infinity,
            fit: BoxFit.contain,
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => login()),
        );
      },
      child: Text('login', style: textstyles.size16()),
    );
  }

  TextFormField _PasswordField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(25),
        fillColor: Appcolors.bgtext,
        filled: true,
        label: Text(
          'Enter your password',
          style: textstyles.size16(color: Appcolors.textcolor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Appcolors.textborder, width: 1),
        ),
      ),
    );
  }

  TextFormField _nameField() {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(25),
        fillColor: Appcolors.bgtext,
        filled: true,
        label: Text(
          'Enter your name',
          style: textstyles.size16(color: Appcolors.textcolor),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Appcolors.textborder, width: 1),
        ),
      ),
    );
  }

  Widget _forget(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Forget()),
            );
          },
          child: Text(
            'Forget Password?',
            style: textstyles.size14(color: Appcolors.textcolor),
          ),
        ),
      ],
    );
  }
}
