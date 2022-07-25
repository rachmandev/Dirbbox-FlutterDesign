import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/change_password_controller.dart';

class ChangePasswordView extends GetView<ChangePasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              IconButton(
                onPressed: () => Get.back(),
                icon: Icon(Icons.arrow_back_ios),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Current Password",
                      style: TextStyle(
                        color: Color(0xFF1B1D28),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          border: InputBorder.none,
                          filled: true),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "New Password",
                      style: TextStyle(
                        color: Color(0xFF1B1D28),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          border: InputBorder.none,
                          filled: true),
                    ),
                    SizedBox(height: 30),
                    Text(
                      "Confirm New Password",
                      style: TextStyle(
                        color: Color(0xFF1B1D28),
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          border: InputBorder.none,
                          filled: true),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
