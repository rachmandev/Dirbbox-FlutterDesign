import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: Get.width,
                child: Image.asset(
                  'assets/images/bg.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 135),
                    Container(
                      width: 200,
                      height: 200,
                      child: Image.asset(
                        'assets/images/pic-1.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Welcome to',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Dirbbox',
                      style:
                          TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: 250,
                      child: Text(
                        'Best cloud storage platform for all business and individuals to manage there data\n\nJoin For Free.',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/icons/finger.png'),
                              SizedBox(width: 10),
                              Text(
                                'Smart Id',
                                style: TextStyle(
                                  color: Color(0xFF567DF4),
                                ),
                              )
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4).withOpacity(0.10),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () => Get.offAndToNamed(Routes.HOME),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(width: 10),
                              Image.asset("assets/icons/next.png")
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF567DF4),
                            fixedSize: Size(150, 50),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 40),
                    Center(
                      child: Text(
                        "Use Social Login",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/icons/Instagram.png"),
                        SizedBox(width: 30),
                        Image.asset("assets/icons/Twitter.png"),
                        SizedBox(width: 30),
                        Image.asset("assets/icons/Facebook.png")
                      ],
                    ),
                    SizedBox(height: 50),
                    Center(
                      child: Text(
                        "Create an account",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    SizedBox(height: 30)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
