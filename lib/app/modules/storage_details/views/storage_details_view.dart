import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/storage_details_controller.dart';

class StorageDetailsView extends GetView<StorageDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFF22215B),
        ),
        title: Text(
          'Storage Details',
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz),
            color: Color(0xFF22215B),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                height: 150,
                width: 150,
                child: Image.asset("assets/images/diagram-bulat.png"),
              ),
              SizedBox(height: 20),
              Text(
                "Available",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "43.36 GB",
                style: TextStyle(
                  fontSize: 24,
                  color: Color(0xFF22215B),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Total 128 GB",
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF22215B),
                ),
              ),
              SizedBox(height: 20),
              ListTile(
                // leading: Container(
                //   margin: EdgeInsets.all(2),
                //   width: 10,
                //   height: 10,
                //   child: Image.asset("assets/icons/dot-blue.png"),
                // ),
                title: Text("Design Files"),
                subtitle: Text("38.66 GB"),
                trailing: Image.asset("assets/icons/percentage-blue.png"),
              ),
              ListTile(
                title: Text("Images"),
                subtitle: Text("38.66 GB"),
                trailing: Image.asset("assets/icons/percentage-yellow.png"),
              ),
              ListTile(
                title: Text("Video"),
                subtitle: Text("38.66 GB"),
                trailing: Image.asset("assets/icons/percentage-green.png"),
              ),
              ListTile(
                title: Text("Documents"),
                subtitle: Text("38.66 GB"),
                trailing: Image.asset("assets/icons/percentage-blue2.png"),
              ),
              ListTile(
                title: Text("Others"),
                subtitle: Text("38.66 GB"),
                trailing: Image.asset("assets/icons/percentage-orange.png"),
              ),
              SizedBox(height: 20),
              Text(
                "Export Details",
                style: TextStyle(
                  color: Color(0xFF22215B),
                  fontSize: 16,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20)
            ],
          ),
        ),
      ),
    );
  }
}
