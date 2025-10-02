

import 'package:bookia/constants/dialogs/dialog.dart';
import 'package:bookia/constants/routes/Routes.dart';
import 'package:bookia/constants/routes/route.dart';
import 'package:bookia/features/Auth/presentation/cubit/Auth_cubit.dart';
import 'package:bookia/features/Auth/presentation/cubit/Auth_state.dart';
import 'package:bookia/utils/colors.dart';
import 'package:bookia/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

// ignore: camel_case_types
class Register extends StatelessWidget {
  const Register({super.key});

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
            print("kkkkkk");
          } else if (state is AuthFailure) {
            showErrorDialog(context, "Registration failed !");
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Form(
            key: cubit.formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello! Register to get \n started',
                  style: textstyles.size30(),
                ),
                Gap(20),
                _nameField(cubit.name),
                Gap(20),
                _Email(cubit.email),
                Gap(20),
                _password(cubit.password),
                Gap(20),
                _password2(cubit.confirmPassword),
                Gap(30),
                _registerButton(context, () {
                  if (cubit.formkey.currentState!.validate()) {
                    cubit.register();
                  }
                  ;
                }),
                Gap(150),
                _bottom(context),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

ElevatedButton _registerButton(BuildContext context, Function() register) {
  return ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Appcolors.orangecolor,
      foregroundColor: Appcolors.bgtext,
      minimumSize: Size(double.infinity, 60),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
    onPressed: register,
    child: Text('Register', style: textstyles.size16()),
  );
}

Widget _bottom(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text('Already have an account? ', style: textstyles.size14()),
      TextButton(
        onPressed: () {
          PushTo(context, Routes.login);
        },
        child: Text(
          'Login Now',
          style: textstyles.size14(color: Appcolors.orangecolor),
        ),
      ),
    ],
  );
}

TextFormField _nameField(TextEditingController name) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "name is required";
      }
      return null;
    },
    controller: name,
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

TextFormField _Email(TextEditingController email) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "email is required";
      }
      return null;
    },
    controller: email,
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

TextFormField _password(TextEditingController password) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return "pasword is required";
      }
      return null;
    },
    controller: password,
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

TextFormField _password2(TextEditingController passwordconfirm) {
  return TextFormField(
    validator: (value) {
      if (value == null || value.isEmpty) {
        return " confirm password is required";
      }
      return null;
    },
    controller: passwordconfirm,
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
