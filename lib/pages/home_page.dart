import 'package:flutter/material.dart';
import 'package:simple_my_portfolio/constants/colors.dart';
import 'package:simple_my_portfolio/constants/nav_items.dart';
import 'package:simple_my_portfolio/widgets/drawer_mobile.dart';
import 'package:simple_my_portfolio/widgets/site_logo.dart';

import '../constants/size.dart';
import '../styles/style.dart';
import '../widgets/header_desktop.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg, //Цвет бэкграунда

          // Боковая панель (Drawer - слева, endDrawer - справа)
          endDrawer: constraints.maxWidth >= kMinDesktopWidth ? null: const DrawerMobile(),
          // Используем список
          body: ListView(
              // Делаем вертикальную прокрутку
              scrollDirection: Axis.vertical,
              // Подраздел
              children: [
                // Основной раздел
                if(constraints.maxWidth>kMinDesktopWidth)
                const HeaderDesktop() else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),

                //Раздел навыков
                Container(
                  height: 500,
                  width: double.maxFinite,
                  color: Colors.blueGrey,
                ),

                //Проекты
                Container(
                  height: 500,
                  width: double.maxFinite,
                ),

                //Связь
                Container(
                  height: 500,
                  width: double.maxFinite,
                  color: Colors.blueGrey,
                ),

                //Нижний колонтитул
                Container(
                  height: 500,
                  width: double.maxFinite,
                ),
              ]),
        );
      }
    );
  }
}
