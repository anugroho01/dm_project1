import 'package:dm_project1/app/routes/app_pages.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: RichText(
          text: TextSpan(
            text: "Hai, ",
            style: TextStyle(
              fontSize: 18,
            ),
            children: [
              TextSpan(
                text: "Ariska",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
        backgroundColor: Color(0xFFEC2028),
        elevation: 0,
      ),
      body: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              height: 250,
              width: Get.width,
              color: Color(0xFFEC2028),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Column(
                  children: [
                    ClipPath(
                      clipper: ClipInfoClass(),
                      child: Container(
                        padding: EdgeInsets.all(15),
                        margin: EdgeInsets.symmetric(horizontal: 25),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFFE52D27),
                              Color(0xFFB31217),
                            ],
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "email@mu.co.id",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                //Image.asset("assets/logo/simpati.png"),
                              ],
                            ),
                            SizedBox(height: 20),
                            Text(
                              "BRANCH BITUNG",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 100),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: 7,
                  color: Colors.grey[300],
                ),
                Expanded(
                    child: Container(
                  child: Container(
                    child: Column(
                      children: [
                        Expanded(
                            child: ListView(
                          padding: EdgeInsets.symmetric(horizontal: 25),
                          children: [
                            SizedBox(height: 20),
                            Text(
                              "Kategori Checklist",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                ),
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                ),
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                ),
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                )
                              ],
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                ),
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                ),
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                ),
                                CheckLIstKatagori(
                                  title: "Hardware",
                                  icon: "assets/icon/hw.png",
                                )
                              ],
                            )
                          ],
                        )),
                        //navigation
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          height: 100,
                          decoration: BoxDecoration(
                            border: Border(
                              top: BorderSide(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          // color: Colors.amber,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ItemNav(
                                  icon: "beranda",
                                  status: true,
                                  title: "Beranda",
                                  kePage: "/home"),
                              ItemNav(
                                  icon: "riwayat",
                                  status: true,
                                  title: "Riwayat Checklist",
                                  kePage: "/riwayat"),
                              ItemNav(
                                  icon: "profile",
                                  status: true,
                                  title: "Profile",
                                  kePage: "/profile"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class ClipInfoClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width - 80, size.height);
    path.lineTo(size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}

class CheckLIstKatagori extends StatelessWidget {
  CheckLIstKatagori({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  final String title;
  late String icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.PROFILE),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 50,
            height: 50,
            child: Image.asset(
              icon,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}

class ItemNav extends StatelessWidget {
  const ItemNav({
    Key? key,
    required this.status,
    required this.icon,
    required this.title,
    required this.kePage,
  }) : super(key: key);

  final bool status;
  final String title;
  final String icon;
  final String kePage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(kePage),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            child: Image.asset(
              (status == true)
                  ? "assets/icon/$icon-active.png"
                  : "assets/icon/$icon.png",
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(height: 5),
          Text(
            title,
            style: TextStyle(
              color: (status == true) ? Color(0xFFEC2028) : Color(0xFF747D8C),
            ),
          ),
        ],
      ),
    );
  }
}
