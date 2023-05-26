import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_flutter_app/src/repository/authentication_repository/authentication_repository.dart';
class SignUpController extends GetxController{
  static SignUpController get instance => Get.find();

  //Text field controller to get data
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();


  //Call this function from design and it will do the rest
  void registerUser( String email, String password){
    AuthenticationRepository.instance.createUserWithEmailAndPassword(email, password);
  }
}