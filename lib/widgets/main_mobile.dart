import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    //Получение размера экрана
    final screenSize = MediaQuery.of(context).size;
    //Получение ширины экрана
    final screenWidth = screenSize.width;
    //Получение высоты экрана
    final screenHeight = screenSize.height;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: BoxConstraints(minHeight: 560,),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Аватар картинки
          Image.asset("assets/икосаэдр.png", width: screenWidth,),
          //Интро текст
          const Text(
            "Hi,\nI'm Nikita Abramenko\nA Flutter Developer",
            style: TextStyle(
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
              width: 190,
              child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Свяжитесь со мной"))
          ),
          //Кнопка
        ],
      ),
    );
  }
}
