import 'dart:core';


class ShopUserModel{

  String? name;
  String? phone;
  String? email;
  String? uId;

  ShopUserModel({required String name, required String email, required String phone, required String uId}){
    this.name;
    this.phone;
    this.email;
    this.uId;
  }
  ShopUserModel.fromJson(Map<String, dynamic> json){
    email=json['email'];
    name=json['name'];
    phone=json['phone'];
    uId=json['uId'];
  }
  Map<String, dynamic> toMap(){
    return{
      'name':name,
      'email':email,
      'phone':phone,
      'uId':uId,

    };
  }
}