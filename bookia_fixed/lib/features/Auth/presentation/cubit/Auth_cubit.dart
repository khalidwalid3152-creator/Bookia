import 'package:bookia/features/Auth/data/Repo/auth_Repo.dart';
import 'package:bookia/features/Auth/data/model/auth_parames.dart';
import 'package:bookia/features/Auth/presentation/cubit/Auth_state.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  var formkey = GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var password = TextEditingController();
  var confirmPassword = TextEditingController();

  register() async {
    emit(AuthLoading());
    var parames = AuthParames(
      name: name.text,
      email: email.text,
      password: password.text,
      confirmPassword: confirmPassword.text,
    );
    var res = await AuthRepo.register(parames);
    if (res != null) {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure());
    }
  }

  login() async {
    emit(AuthLoading());
    var parames = AuthParames(email: email.text, password: password.text);
    var res = await AuthRepo.login(parames);
    if (res != null) {
      emit(AuthSuccess());
    } else {
      emit(AuthFailure());
    }
  }
}
