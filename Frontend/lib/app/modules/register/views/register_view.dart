import 'package:flutter/material.dart';
import 'package:frontend/app/modules/login/views/login_view.dart';
import 'package:get/get.dart';
import '../controllers/register_controller.dart';

class RegisterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return GetBuilder<RegisterController>(
      init: RegisterController(),
      builder: (controller) => Scaffold(
        body: SingleChildScrollView(
          child: Form(
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
                                "Sign Up Now, ",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xffe37222),
                                  fontSize: screenSize.width * 0.085,
                                  fontFamily: "Poppins",
                                ),
                              ),
                              Text(
                                "To Get All Features",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xff9e9999),
                                  fontSize: screenSize.width * 0.04,
                                  fontFamily: "Poppins",
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: screenSize.height * 0.005,
                        ),
                        Column(
                          children: [
                            SizedBox(
                              width: screenSize.width * 1,
                              height: screenSize.height * 0.025,
                              child: Text(
                                "Name",
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
                                controller: controller.nameController,
                                validator: controller.nameValidator,
                                keyboardType: TextInputType.name,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: screenSize.width * 0.0325,
                                  fontFamily: "Poppins",
                              ),
                              decoration: InputDecoration(
                                hintText: "Enter your name",
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
                                  )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Color(0xffe37222),
                                    width: 1,
                                  )
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12),
                                  borderSide: BorderSide(
                                    color: Color(0xffe37222),
                                    width: 1,
                                  )
                                ),
                                prefixIcon: Icon(
                                  Icons.person,
                                  color: Color(0xff9e9999),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: screenSize.height * 0.005,
                      ),
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
                            hintText: "Enter your email",
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
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xffe37222),
                                width: 1,
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xffe37222),
                                width: 1,
                              )
                            ),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Color(0xff9e9999),
                            ),
                          ),
                        ),
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
                              )
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xffe37222),
                                width: 1,
                              )
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(
                                color: Color(0xffe37222),
                                width: 1,
                              )
                            ),
                            prefixIcon: Icon(
                              Icons.key,
                              color: Color(0xff9e9999),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.05,
                      ),
                      ElevatedButton(
                        onPressed: () => controller.auth(),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffe37222)
                          ),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            )
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: screenSize.height * 0.02,
                            horizontal: screenSize.width * 0.25,
                          ),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenSize.width * 0.04,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
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
                                  builder: (context) => LoginView(),
                                ),
                              );
                            },
                            child: Text(
                              "Log in",
                              style: TextStyle(
                                color: Color(0xff4f95d0),
                                fontSize: screenSize.width * 0.035,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w700
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
