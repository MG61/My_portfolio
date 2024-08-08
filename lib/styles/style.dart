import 'package:flutter/material.dart';

import '../constants/colors.dart';

//Стиль для верхнего колонтитула
BoxDecoration kHederDecoration = BoxDecoration(
  gradient: const LinearGradient(
    colors: [
      Colors.transparent,
      CustomColor.bgLight1,
    ],
  ),
  borderRadius: BorderRadius.circular(100),
);