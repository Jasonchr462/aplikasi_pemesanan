import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            child: Image.asset("assets/images/bestfood/BakmiBerkat.jpg"),
          ),
          DrawerListTile(
            title: "Daftar Menu",
            svgSrc: "assets/icons/menu_dashboard.svg",
            color: Colors.blueAccent,
            press: () {},
          ),
          DrawerListTile(
            title: "Kategori Menu",
            svgSrc: "assets/icons/menu_tran.svg",
            color: Colors.blueAccent,
            press: () {},
          ),
          DrawerListTile(
            title: "Order",
            svgSrc: "assets/icons/menu_task.svg",
            color: Colors.blueAccent,
            press: () {},
          ),
          DrawerListTile(
            title: "Dapur",
            svgSrc: "assets/icons/menu_doc.svg",
            color: Colors.blueAccent,
            press: () {},
          ),
          DrawerListTile(
            title: "User",
            svgSrc: "assets/icons/menu_store.svg",
            color: Colors.blueAccent,
            press: () {},
          ),
          DrawerListTile(
            title: "Report",
            svgSrc: "assets/icons/menu_notification.svg",
            color: Colors.blueAccent,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    Key? key,
    // For selecting those three line once press "Command+D"
    required this.title,
    required this.svgSrc,
    required this.press, required MaterialAccentColor color,
    // required this.color,
  }) : super(key: key);

  final String title, svgSrc;
  final VoidCallback press;
  // final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        colorFilter: ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.blueAccent),
      ),
    );
  }
}
