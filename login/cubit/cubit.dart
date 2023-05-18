import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:snap/login/cubit/states.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:snap/login/shop_login_model.dart';

import '../shop_login_model.dart';


class ShopLoginCubit extends Cubit<ShopLoginStates> {
  ShopLoginCubit() : super(ShopLoginInitialState());

  static ShopLoginCubit get(context) => BlocProvider.of(context);

 late  ShopLoginModel loginModel;

  void userLogin({
    required String email,
    required String password,
  })
  {

    emit(ShopLoginLoadingState());
    FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password,
    ).then((value){
      emit(ShopLoginSuccessState());
    }
    ).catchError((error){
      emit(ShopLoginErrorState(error.toString()));
    });

  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined ;

    emit(ShopChangePasswordVisibilityState());
  }
}