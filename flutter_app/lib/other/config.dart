import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:get/get.dart';
import 'package:flutter_app/other/drawer.dart';



Color buttons = Colors.purple;
Color appbar = Colors.purple[800];
Color background = Colors.white;

//const Color back = Color.fromARGB(100, 48, 48, 48);

abstract class TextStyles {
  static const TextStyle topic_title_1line = TextStyle(

    fontSize: 25,
  );

  static const TextStyle topic_title_2_3line = TextStyle(

    fontSize: 20,
  );

  static const TextStyle just_topic_text = TextStyle(

      fontSize: 18,
  );

  static const TextStyle formula_explanations = TextStyle(

      fontSize: 15,
  );

  static const TeXViewStyle formula = TeXViewStyle(
      contentColor: Colors.black,
      textAlign: TeXViewTextAlign.Center

  );


}
abstract class Paddings {
  static double topic_title_p = 20.0;
}
class cfg{
  static String types = 'sin';
}