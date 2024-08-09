import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение высоты экрана
    final screenHeight = screenSize.height;


    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: screenHeight / 1.2,
      constraints: BoxConstraints(minHeight: 350),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Hi,\nI'm Nikita Abramenko\nA Flutter Developer",
                style: TextStyle(
                  fontSize: 30,
                  height: 1.5,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: const Text("Свяжитесь со мной"))
              ),
            ],
          ),
          Image.asset(
            "assets/икосаэдр.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }
}
