import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap/register/cubit/states.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:snap/user_model/user_model.dart';

import '../../login/shop_login_model.dart';
import '../../network/remote/dio_helper.dart';
class ShopRegisterCubit extends Cubit<ShopRegisterStates> {
  ShopRegisterCubit() : super(ShopRegisterInitialState());

  static ShopRegisterCubit get(context) => BlocProvider.of(context);



  void userRegister({
    required String name,
    required String email,
    required String password,
    required String phone,
  })
  {
    emit(ShopRegisterLoadingState());
    FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password,
    ).then((value){

      userCreate(
        uId: value.user!.uid,
        email: email,
        name: name,
        phone: phone,


      );


    }).catchError((error){
      emit(ShopRegisterErrorState(error.toString()));
    });
  }
  void userCreate({
    required String name,
    required String email,
    required String phone,
    required String uId,
  })
  {
    ShopUserModel model= ShopUserModel(
      name: name,
      email: email,
      phone: phone,
      uId:uId,
    );
    FirebaseFirestore.instance.collection('users').
    doc(uId).
    set(model.toMap()
    ).then((value){
      emit(ShopCreateUserSuccessState());
    }).catchError((error){
      emit(ShopCreateUserErrorState(error.toString()));
    });

  }

  IconData suffix = Icons.visibility_outlined;
  bool isPassword = true;

  void changePasswordVisibility()
  {
    isPassword = !isPassword;
    suffix = isPassword ? Icons.visibility_outlined : Icons.visibility_off_outlined ;

    emit(ShopRegisterChangePasswordVisibilityState());
  }
}