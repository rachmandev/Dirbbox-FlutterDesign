import 'package:dirbbox/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFFF1F3F6),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(13),
                  width: Get.width * 0.6,
                  height: 110,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(60)),
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      ListTile(
                        leading: Image.asset("assets/images/Profile.png"),
                        title: Text(
                          "Neelesh",
                          style: TextStyle(fontSize: 16),
                        ),
                        subtitle: Text(
                          "Seattle,Washington",
                          style: TextStyle(fontSize: 14),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                ListTile(
                  onTap: () => Get.toNamed(Routes.HOME),
                  title: Text(
                    "Home",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  onTap: () => Get.toNamed(Routes.PROFILE),
                  title: Text(
                    "Profile",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  onTap: () => Get.toNamed(Routes.STORAGE_DETAILS),
                  title: Text(
                    "Storage",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Shared",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Stats",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  onTap: () => Get.toNamed(Routes.SETTINGS),
                  title: Text(
                    "Settings",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                ListTile(
                  title: Text(
                    "Help",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(height: 28),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: TextButton.icon(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    icon: Image.asset("assets/icons/logout.png"),
                    label: Text("Logout"),
                  ),
                ),
                ListTile(
                  subtitle: Text("Version 2.0.1"),
                )
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Your Dribbbox",
                        style: TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      Image.asset("assets/icons/union.png"),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextField(
                    showCursor: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      hintText: "Search Folder",
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Recents",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(width: 5),
                          Image.asset("assets/icons/arrow_bottom.png")
                        ],
                      ),
                      Container(
                        width: 75,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset("assets/icons/menu.png"),
                            Image.asset("assets/icons/grid.png"),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardHomeFolder(
                          title: "Mobile Apps",
                          date: "December 20.2020",
                          image: Image.asset("assets/icons/Folder-blue.png"),
                          color: Color(0xFF415EB6),
                        ),
                        CardHomeFolder(
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
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardHomeFolder(
                          title: "Prototypes",
                          date: "Novemaber 22.2020",
                          image: Image.asset("assets/icons/Folder-red.png"),
                          color: Color(0xFFAC4141),
                        ),
                        CardHomeFolder(
                          title: "Avatars",
                          date: "Novemaber 10.2020",
                          image: Image.asset("assets/icons/Folder-green.png"),
                          color: Color(0xFF34DEDE),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardHomeFolder(
                          title: "Design",
                          date: "December 20.2020",
                          image: Image.asset("assets/icons/Folder-blue.png"),
                          color: Color(0xFF415EB6),
                        ),
                        CardHomeFolder(
                          title: "Portfolio",
                          date: "December 14.2020",
                          image: Image.asset("assets/icons/Folder-yellow.png"),
                          color: Color(0xFFFFB110),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardHomeFolder(
                          title: "References",
                          date: "Novemaber 22.2020",
                          image: Image.asset("assets/icons/Folder-red.png"),
                          color: Color(0xFFAC4141),
                        ),
                        CardHomeFolder(
                          title: "Clients",
                          date: "Novemaber 10.2020",
                          image: Image.asset("assets/icons/Folder-green.png"),
                          color: Color(0xFF34DEDE),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardHomeFolder(
                          title: "Design",
                          date: "December 20.2020",
                          image: Image.asset("assets/icons/Folder-blue.png"),
                          color: Color(0xFF415EB6),
                        ),
                        CardHomeFolder(
                          title: "Portfolio",
                          date: "December 14.2020",
                          image: Image.asset("assets/icons/Folder-yellow.png"),
                          color: Color(0xFFFFB110),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF22215B),
        child: Icon(Icons.add),
      ),
    );
  }
}

class CardHomeFolder extends StatelessWidget {
  CardHomeFolder({
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
