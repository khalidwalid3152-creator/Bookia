import 'package:bookia/features/login/login.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class register extends StatelessWidget {
  const register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello! Register to get \n started',
              style: textstyles.size30(),
            ),
            Gap(20),
            _nameField(),
            Gap(20),
            _Email(),
            Gap(20),
            _password(),
            Gap(20),
            _password2(),
            Gap(30),
            _registerButton(context),
            Gap(150),
            _bottom(context)
          ],
        ),
      ),
    );
  }

  ElevatedButton _registerButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.orangecolor,
        foregroundColor: Appcolors.bgtext,
        minimumSize: Size(double.infinity, 60),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => register()),
        );
      },
      child: Text('Register', style: textstyles.size16()),
    );
  }
}


Widget _bottom(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Already have an account? ', style: textstyles.size14()),
        TextButton(
          onPressed: ( ) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => login()),
            );
          },
          child: Text(
            'Login Now',
            style: textstyles.size14(color: Appcolors.orangecolor),
          ),
        ),
      ],
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

TextFormField _password() {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(25),
      fillColor: Appcolors.bgtext,
      filled: true,
      label: Text(
        'Passwoed',
        style: textstyles.size16(color: Appcolors.textcolor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Appcolors.textborder, width: 1),
      ),
    ),
  );
}

TextFormField _password2() {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(25),
      fillColor: Appcolors.bgtext,
      filled: true,
      label: Text(
        'Conform Password',
        style: textstyles.size16(color: Appcolors.textcolor),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Appcolors.textborder, width: 1),
      ),
    ),
  );
}
