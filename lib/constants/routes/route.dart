import 'package:bookia/features/Auth/OTP/otp.dart';
import 'package:bookia/features/Auth/createpassword/createPassword.dart';
import 'package:bookia/features/Auth/forgetPassword/forget.dart';
import 'package:bookia/features/Auth/login/login.dart';
import 'package:bookia/features/Auth/presentation/cubit/Auth_cubit.dart';
import 'package:bookia/features/splashScreen/splash.dart';
import 'package:bookia/features/Auth/success/done.dart';
import 'package:bookia/features/welcome/welcome.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:bookia/features/Auth/register/register.dart';

class Routes {
  static const String splash = '/';
  static const String welcome = '/welcome';
  static const String login = '/login';
  static const String register = '/register';
  static const String otp = '/otp';
  static const String forget = '/forget';
  static const String createpassword = '/createpassword';
  static const String success = '/success';

  static GoRouter routes = GoRouter(
    initialLocation: splash,
    routes: [
      GoRoute(path: splash, builder: (context, state) => Splash()),
      GoRoute(path: welcome, builder: (context, state) => Welcome()),
      GoRoute(path: login, builder: (context, state) => Login()),
      GoRoute(path: register, builder: (context, state) => BlocProvider(create: (context) => AuthCubit(),child: Register())),
      GoRoute(path: otp, builder: (context, state) => Otp()),
      GoRoute(path: forget, builder: (context, state) => Forget()),
      GoRoute(
        path: createpassword,
        builder: (context, state) => Createpassword(),
      ),
      GoRoute(path: success, builder: (context, state) => done()),
    ],
  );
}
