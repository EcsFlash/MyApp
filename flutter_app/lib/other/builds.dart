import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_app/other/config.dart';
import 'package:get/get.dart';
import 'package:flutter_app/other/widgets.dart';

List<Widget> buildTheme(BuildContext, data) {
  var themetext = List<Widget>();
  data.forEach((k,v){
    print(k);
    List list = k.split("_");
    if (list[0] == 'topictext'){
      themetext.add(TopicText(text:data[k]));
    }
    if (list[0] == 'formula'){
      themetext.add(Formula(formula:data[k]));
    }
    if (list[0] == 'formulaexp'){
      themetext.add(FormulaExplanation(text: data[k]));
    }
    if (list[0] == 'centerlabel'){
      themetext.add(CenterLabel(text: data[k]));
    }
  });
  return themetext;
}

List<Widget> buildThemesList(BuildContext, context, data) {
  var themeslist = List<Widget>();
  data.forEach((k,v){
    themeslist.add(ThemeButton(context: context, text: k, way: data[k]));
  });
  return themeslist;
}


