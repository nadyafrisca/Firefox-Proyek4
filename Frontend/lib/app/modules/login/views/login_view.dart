import 'package:flutter/material.dart';
import 'package:frontend/app/modules/home/views/home_view.dart';
import 'package:frontend/app/modules/register/views/register_view.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GetBuilder<LoginController>(
      init: LoginController(),
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Form(
              // key: controller.formKeyLog,
              child: Container(
                height: screenSize.height,
                width: screenSize.width,
                color: Color(0xfff1f1ef),
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.1,
                  left: screenSize.width * 0.1,
                  right: screenSize.width * 0.1,
                ),
                child: SafeArea(
                  child: GestureDetector(
                    onTap: () {
                      FocusScope.of(context).unfocus();
                    },
                    child: Column(
                      children: [
                        Container(
                          width: screenSize.width * 0.85,
                          height: screenSize.height * 0.1005,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Welcome, ",
                                  style: TextStyle(
                                    color: Color(0xffe37222),
                                    fontSize: screenSize.width * 0.085,
                                    fontFamily: "Poppins",
                                  ),
                                ),
                                Text(
                                  "Log in now to continue",
                                  style: TextStyle(
                                    color: Color(0xff9e9999),
                                    fontSize: screenSize.width * 0.04,
                                    fontFamily: "Poppins",
                                  ),
                                )
                              ]),
                        ),
                        Container(
                          width: screenSize.width * 0.7,
                          height: screenSize.height * 0.3,
                          child: Image.asset(
                            "assets/images/login.jpg",
                          ),
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenSize.width * 1,
                              height: screenSize.height * 0.025,
                              child: Text(
                                "Email",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xffe37222),
                                  fontSize: screenSize.width * 0.035,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: screenSize.height * 0.001,
                                  horizontal: screenSize.width * 0.001,
                                ),
                                child: TextFormField(
                                  controller: controller.emailController,
                                  validator: controller.emailValidator,
                                  keyboardType: TextInputType.emailAddress,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenSize.width * 0.0325,
                                    fontFamily: "Poppins",
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter your email address",
                                    hintStyle: TextStyle(
                                      color: Color(0xff9e9999),
                                      fontSize: screenSize.width * 0.0325,
                                      fontFamily: "Poppins",
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xffe37222),
                                          width: 1,
                                        )),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xffe37222),
                                          width: 1,
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xffe37222),
                                          width: 1,
                                        )),
                                    prefixIcon: Icon(
                                      Icons.email,
                                      color: Color(0xff9e9999),
                                    ),
                                  ),
                                )),
                            SizedBox(
                              height: screenSize.height * 0.005,
                            ),
                            SizedBox(
                              width: screenSize.width * 1,
                              height: screenSize.height * 0.025,
                              child: Text(
                                "Password",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  color: Color(0xffe37222),
                                  fontSize: screenSize.width * 0.035,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ),
                            Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: screenSize.height * 0.001,
                                  horizontal: screenSize.width * 0.001,
                                ),
                                child: TextFormField(
                                  controller: controller.passwordController,
                                  validator: controller.passwordValidator,
                                  obscureText: true,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: screenSize.width * 0.0325,
                                    fontFamily: "Poppins",
                                  ),
                                  decoration: InputDecoration(
                                    hintText: "Enter your password",
                                    hintStyle: TextStyle(
                                      color: Color(0xff9e9999),
                                      fontSize: screenSize.width * 0.0325,
                                      fontFamily: "Poppins",
                                    ),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xffe37222),
                                          width: 1,
                                        )),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xffe37222),
                                          width: 1,
                                        )),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(12),
                                        borderSide: BorderSide(
                                          color: Color(0xffe37222),
                                          width: 1,
                                        )),
                                    prefixIcon: Icon(
                                      Icons.key,
                                      color: Color(0xff9e9999),
                                    ),
                                  ),
                                ))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              SizedBox(
                                width: screenSize.width * 0.35,
                                height: screenSize.height * 0.05,
                                //
                              ),
                            ]),
                        ElevatedButton(
                          // onPressed: () => controller.auth(),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => HomeView()),
                            );
                          },

                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffe37222),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: screenSize.height * 0.02,
                              horizontal: screenSize.width * 0.25,
                            ),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Poppins",
                                fontSize: screenSize.width * 0.04,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don't have an account?",
                                style: TextStyle(
                                  color: Color(0xffe37222),
                                  fontSize: screenSize.width * 0.035,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => RegisterView()
                                        ),
                                    );
                                  },
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Color(0xff4f95d0),
                                      fontSize: screenSize.width * 0.035,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w700,
                                    ),
                                  )),
                            ]),
                      ],
                    ),
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
