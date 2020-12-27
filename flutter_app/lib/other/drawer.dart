import 'package:flutter/material.dart';
import 'package:flutter_app/other/config.dart';
import 'package:get/get.dart';
import 'package:flutter_app/main.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_app/morphology.dart';
import 'package:flutter_app/sincos.dart';

import '../y.dart';


class Controller extends GetxController{
  var stateru = '${cs}'.obs;
  var state = ''.obs;
}


class MainDrawer extends StatelessWidget {
  var back;
  @override
  Widget build(BuildContext context) {
    final Controller c = Get.put(Controller());
    return
      Container(
        width: 270,
        child:
          Drawer(
            child: ListView(
            children: [
              DrawerHeader(
                child:
                  Align(alignment: Alignment.center,
                    child:
                      Text('Настройки',
                        style:
                          TextStyle(
                            fontSize: 25,
                            color: Colors.white
                          )
                      ),
                  ),
                decoration:
                  BoxDecoration(
                    color: appbar,
                  )
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 5.0),
                    child:
                      Text('Темная тема:',
                        style:
                          TextStyle(fontSize: 17),
                      )
                  ),
                  Padding(padding: EdgeInsets.only(top: 2.0),
                    child:
                      Padding(padding: EdgeInsets.only(left: 30.0),
                        child:
                          OutlineButton(
                            onPressed: (){
                              if (Get.isDarkMode) {
                                Get.changeTheme(ThemeData.light());
                                c.stateru = 'Включить'.obs; //меняем надпись на кнопке смены темы
                                sp.setString('dark','no');//меняем конфиг для надписи кнопки смены темы
                              }
                              else{
                                Get.changeTheme(ThemeData.dark());
                                c.stateru = 'Выключить'.obs;//меняем надпись на кнопке смены темы
                                sp.setString('dark','yes');//меняем конфиг для надписи кнопки смены темы
                              };
                            },
                            child:
                              Obx(() => Text(" ${c.stateru()}")),
                          )
                      )
                  )
                ]
              ),
              Divider(),
              ListTile(
                title: Text('Морфологический разбор(A)',
                  style:
                    TextStyle(fontSize: 17,
                    fontWeight: FontWeight.normal,
                    ),
                ),
                contentPadding: EdgeInsets.only(left: 5.0),
                onTap:(){
                  Get.to(Morhy());
                },
              ),
              Divider(),
              ListTile(
                title: Text('Постороение графиков(А)',
                  style:
                    TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.normal,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 5.0),
                onTap:(){

                },
              ),
              Divider(),
              ListTile(
                title: Text('Вычисление sin...',
                style:
                  TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                contentPadding: EdgeInsets.only(left: 5.0),
                onTap:(){
                  Get.to(Tabs());
                },
              )
          ]
        ),
      ),

    );
  }
}