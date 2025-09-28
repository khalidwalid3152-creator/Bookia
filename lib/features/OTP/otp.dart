import 'package:bookia/features/createpassword/createPassword.dart';
import 'package:bookia/features/forgetPassword/forget.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Otp extends StatelessWidget {
  const Otp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('OTP Verification',style: textstyles.size30(),),
            
            Gap(10),
           Text('Enter the verification code we just sent on \n your email address.',style: textstyles.size16(color: Appcolors.textcolor),),
            Gap(30),
            Row(
              spacing: 10,
              children: [
              Expanded(child: _Email()),
              Expanded(child: _Email()),
              Expanded(child: _Email()),
              Expanded(child: _Email()),
            ],),
            Gap(30),
            _Button(context),
            Gap(450),
            _bottom(context)

            
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
        Text('Didn’t received code?', style: textstyles.size16()),
        TextButton(
          onPressed: ( ) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Forget()),
            );
          },
          child: Text(
            'Resend',
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
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Createpassword()),
        );
      },
      child: Text('Verify', style: textstyles.size16()),
    );
  }
TextFormField _Email() {
  return TextFormField(
    decoration: InputDecoration(
      contentPadding: EdgeInsets.all(25),
      fillColor: Appcolors.bgtext,
      focusColor: Appcolors.dark,
      filled: true,
      focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Appcolors.orangecolor, width: 1),
        borderRadius: BorderRadius.circular(10),
        
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: Appcolors.textborder, width: 1),
      ),
    ),
  );
}