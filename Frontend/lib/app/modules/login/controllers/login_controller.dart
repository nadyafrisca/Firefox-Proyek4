import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:frontend/app/data/login_provider.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  MultiValidator emailValidator = MultiValidator([
    RequiredValidator(errorText: "Email is required"),
    EmailValidator(errorText: "Enter a valid email address"),
  ]);

  MultiValidator passwordValidator = MultiValidator([
    RequiredValidator(errorText: "Password is required"),
    MinLengthValidator(6, errorText: "Password must be at least 6 digits long"),
    MaxLengthValidator(15,
        errorText: "Password must be at most 15 digits long"),
  ]);

  // GlobalKey<FormState> formKeyLog = GlobalKey<FormState>(debugLabel: UniqueKey().toString());

  void auth() {
    String email = emailController.text;
    String password = passwordController.text;
    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please fill all the fields",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP);
    } else {
      var data = {
        "email": email,
        "password": password,
      };
      LoginProvider().auth(data).then((value) {
        if (value.statusCode == 200) {
          Get.snackbar("Success", "Login Successful",
              backgroundColor: Colors.green,
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP);
        } else {
          Get.snackbar("Error", "Login Failed",
              backgroundColor: Colors.red,
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP);
        }
      });
    }
  }
}
