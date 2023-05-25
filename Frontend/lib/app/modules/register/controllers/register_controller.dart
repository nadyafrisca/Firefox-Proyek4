import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:frontend/app/data/register_provider.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  MultiValidator nameValidator = MultiValidator([
    RequiredValidator(errorText: "Name is required"),
    MinLengthValidator(3, errorText: "Name must be at least 3 digits long"),
    MaxLengthValidator(15,
        errorText: "Name must be at most 15 digits long"),
  ]);

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

  // GlobalKey<FormState> formKeyReg = GlobalKey<FormState>(debugLabel: UniqueKey().toString());

  void auth() {
    String name = nameController.text;
    String email = emailController.text;
    String password = passwordController.text;
    if (name.isEmpty || email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please fill all the fields",
          backgroundColor: Colors.red,
          colorText: Colors.white,
          snackPosition: SnackPosition.TOP);
    } else {
      var data = {
        "name": name,
        "email": email,
        "password": password,
      };
      RegisterProvider().auth(data).then((value) {
        if (value.statusCode == 200) {
          Get.snackbar("Success", "Registration Successful",
              backgroundColor: Colors.green,
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP);
        } else {
          Get.snackbar("Error", "Registration Failed",
              backgroundColor: Colors.red,
              colorText: Colors.white,
              snackPosition: SnackPosition.TOP);
        }
      });
    }
  }
}
