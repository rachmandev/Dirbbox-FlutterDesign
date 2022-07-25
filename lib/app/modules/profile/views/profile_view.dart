import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE5E5E5),
      appBar: AppBar(
        backgroundColor: Color(0xFFE5E5E5),
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0xFF22215B),
          ),
        ),
        title: Text(
          "My Profile",
          style: TextStyle(
            color: Color(0xFF22215B),
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_horiz,
              color: Color(0xFF22215B),
            ),
          ),
        ],
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF22215B),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    Container(
                      width: 75,
                      height: 75,
                      child: Image.asset("assets/images/Profile.png"),
                    ),
                    // SizedBox(height: 0),
                    Text(
                      "Neelesh Chaudhary",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "UI / UX Designer",
                      style: TextStyle(fontSize: 13, color: Colors.white),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        color: Color(0xFFFFFFFF).withOpacity(0.6),
                      ),
                    )
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                      color: Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Center(
                      child: Text(
                        "PRO",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "My Folders",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Container(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/Add.png"),
                      Image.asset("assets/icons/Settings.png"),
                      Image.asset("assets/icons/Arrow_next.png"),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  image: Image.asset("assets/icons/Folder-blue.png"),
                  color: Color(0xFF415EB6),
                ),
                CardFolder(
                  title: "SVG Icons",
                  date: "December 14.2020",
                  image: Image.asset("assets/icons/Folder-yellow.png"),
                  color: Color(0xFFFFB110),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Prototypes",
                  date: "Novemaber 22.2020",
                  image: Image.asset("assets/icons/Folder-red.png"),
                  color: Color(0xFFAC4141),
                ),
                CardFolder(
                  title: "Avatars",
                  date: "Novemaber 10.2020",
                  image: Image.asset("assets/icons/Folder-green.png"),
                  color: Color(0xFF34DEDE),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recent Uploads",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/icons/Sort.png"),
              ],
            ),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset(
                "assets/icons/word.png",
                fit: BoxFit.cover,
              ),
            ),
            title: Text("Projects.docx"),
            subtitle: Text("Novemaber 22.2020"),
            trailing: Text("300kb"),
          ),
          SizedBox(height: 20)
        ],
      ),
    );
  }
}

class CardFolder extends StatelessWidget {
  CardFolder({
    Key? key,
    required this.title,
    required this.date,
    required this.image,
    required this.color,
  }) : super(key: key);

  final String title;
  final String date;
  final Image image;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: Get.width * 0.4,
      height: 150,
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          image,
          SizedBox(height: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: color,
            ),
          ),
          SizedBox(height: 5),
          Text(
            date,
            style: TextStyle(
              fontSize: 15,
              color: color,
            ),
          ),
        ],
      ),
    );
  }
}
