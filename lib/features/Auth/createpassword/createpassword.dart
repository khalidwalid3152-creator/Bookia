import 'package:bookia/features/Auth/login/login.dart';
import 'package:bookia/features/Auth/success/done.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Createpassword extends StatelessWidget {
  const Createpassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Create new password', style: textstyles.size30()),
            Gap(10),
            Text(
              'Your new password must be unique from those \n previously used.',
              style: textstyles.size16(color: Appcolors.textcolor),
            ),
            Gap(25),
            _password(),
            Gap(10),
            _password2(),
            Gap(30),
            _Button(context),
          ],
        ),
      ),
    );
  }
}

TextFormField _password2() {
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

ElevatedButton _Button(BuildContext context) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Appcolors.orangecolor,
      foregroundColor: Appcolors.bgtext,
      minimumSize: Size(double.infinity, 70),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    onPressed: () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => done()));
    },
    child: Text('Reset Password', style: textstyles.size16()),
  );
}

TextFormField _password() {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(25),
      fillColor: Appcolors.bgtext,
      filled: true,
      label: Text(
        'New Passwoed',
        style: textstyles.size16(color: Appcolors.textcolor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Appcolors.textborder, width: 1),
      ),
    ),
  );
}
