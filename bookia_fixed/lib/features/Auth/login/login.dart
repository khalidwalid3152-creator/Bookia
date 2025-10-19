import 'package:bookia/constants/dialogs/dialog.dart';
import 'package:bookia/constants/routes/Routes.dart';
import 'package:bookia/constants/routes/route.dart';
import 'package:bookia/features/Auth/presentation/cubit/Auth_cubit.dart';
import 'package:bookia/features/Auth/presentation/cubit/Auth_state.dart';
import 'package:bookia/images/appImages.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = context.read<AuthCubit>();
    return Scaffold(
      appBar: AppBar(),
      body: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
            showloadingdialog(context);
          } else if (state is AuthSuccess) {
            PushTo(context, Routes.mainappscreen);
          } else if (state is AuthFailure) {
            pop(context);
            showErrorDialog(context, "login failed !");
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: cubit.formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome back! Glad \n to see you, Again!',
                  style: textstyles.size30(),
                ),
                Gap(30),
                _nameField(cubit.email),
                Gap(20),
                _PasswordField(cubit.password),
                _forget(context),
                Gap(30),
                _Button(context, () {
                  if (cubit.formkey.currentState!.validate()) {
                    cubit.login();
                  }
                }),
                Gap(20),
                Image.asset(Appimages.or, width: double.infinity),
                Gap(20),
                _googleAndApple(),
                Gap(100),
                _bottom(context),
              ],
            ),
          ),
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
            PushTo(context, Routes.register);
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

  ElevatedButton _Button(BuildContext context, Function() login) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Appcolors.orangecolor,
        foregroundColor: Appcolors.bgtext,
        minimumSize: Size(double.infinity, 70),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      onPressed: login,
      child: Text('login', style: textstyles.size16()),
    );
  }

  TextFormField _PasswordField(TextEditingController password) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "password is required";
        }
        return null;
      },
      controller: password,
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

  TextFormField _nameField(TextEditingController name) {
    return TextFormField(
      controller: name,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "name is required";
        }
        return null;
      },
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
            PushTo(context, Routes.forget);
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
