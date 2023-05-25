import 'package:flutter/material.dart';
import 'package:flutter/src/material/bottom_navigation_bar.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          toolbarHeight: screenSize.height * 0.1,
          title: Row(
            children: [
              Text(
                'MahasiswaDO',
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Color(0xffe37222),
                  fontSize: screenSize.width * 0.05,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Spacer(),
              Container(
                width: screenSize.width * 0.1,
                height: screenSize.width * 0.1,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(
                      color: Color(0xffe37222),
                      width: 2,
                    ),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Color(0xff9e9999),
                    size: screenSize.width * 0.055,
                  ),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(
                width: screenSize.width * 0.02,
              ),
              Container(
                width: screenSize.width * 0.1,
                height: screenSize.width * 0.1,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                    side: BorderSide(
                      color: Color(0xffe37222),
                      width: 2,
                    ),
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.message,
                    color: Color(0xff9e9999),
                    size: screenSize.width * 0.05,
                  ),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: screenSize.width,
                height: screenSize.height / 2,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Post Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.005,
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height / 2,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Post Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.005,
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height / 2,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Post Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.005,
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height / 2,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Post Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.005,
              ),
              Container(
                width: screenSize.width,
                height: screenSize.height / 2,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    'Post Account',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: screenSize.height * 0.005,
              ),

            ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color(0xffe37222),
          selectedItemColor: Color(0xff07889b),
          unselectedItemColor: Colors.white,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        )
    );
  }
}