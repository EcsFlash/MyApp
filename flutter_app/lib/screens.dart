import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_app/other/config.dart';
import 'package:get/get.dart';
import 'package:flutter_app/other/widgets.dart';
import 'package:flutter_app/other/builds.dart';

class ClassThemes extends StatelessWidget{
  final Map data;
  ClassThemes({Key key, @required this.data}) : super(key: key);
  Widget build(BuildContext context ){
    return Scaffold(
        appBar: MyAppBar(title:'Выбор темы'),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child:
            ListView(
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
                      child:
                      Align(alignment: Alignment.center,
                          child:
                          Text('Выбери тему',
                              style: TextStyle(fontSize: 25))
                      )
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        ...buildThemesList(BuildContext, context, data)

                      ]//children
                  )
                ]
            )
        )
    );
  }
}

class theme extends StatelessWidget{
  final Map data;
  theme({Key key, @required this.data}) : super(key: key);
  Widget build(BuildContext context){
    TeXViewRenderingEngine.katex();
    return Scaffold(
        appBar: MyAppBar(title:data['title']),
        body: Container(
          child:
            ListView(
              children: [
                TopicTitle(title:data['title']),
                Column(
                  children: [
                    ...buildTheme(context,data),
                    //FormulaExplanation(formula_exp)
                  ],
                )
              ],
            )
        )
    );
  }//widget build
}//class

