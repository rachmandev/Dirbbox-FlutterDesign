import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/settings_controller.dart';

class SettingsView extends GetView<SettingsController> {
  final bool statusSwitch = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Settings'),
      //   centerTitle: true,
      // ),
      body: Container(
        padding: EdgeInsets.all(20),
        width: double.infinity,
        child: Expanded(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
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
                  "Settings",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              ListTile(
                title: Text(
                  "Add Account",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                onTap: () => Get.toNamed(Routes.CHANGE_PASSWORD),
                title: Text(
                  "Change Password",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Change Language",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Upgrade Plan",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Multiple Account",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enable Sync",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Switch.adaptive(
                          value: statusSwitch,
                          onChanged: (value) {},
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Enable 2 Step Verification",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Switch.adaptive(
                          value: statusSwitch,
                          onChanged: (value) {},
                        ),
                      ],
                    )
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
