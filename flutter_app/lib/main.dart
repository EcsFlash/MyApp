import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/other/splash.dart';
import 'package:flutter_app/physics.dart';
import 'package:flutter_app/chemistry.dart';
import 'package:flutter_app/algebra.dart';
import 'package:flutter_app/ict.dart';
import 'package:flutter_app/geometry.dart';
import 'package:flutter_app/geography.dart';
import 'package:flutter_app/sincos.dart';
import 'package:flutter_app/socs.dart';
import 'package:flutter_app/other/config.dart';
import 'package:flutter_app/y.dart';
import 'package:get/get.dart';
import 'package:flutter_app/other/drawer.dart';
import 'package:shared_preferences/shared_preferences.dart';


class Subjects extends StatelessWidget{
  Widget build(BuildContext context){


    return Scaffold(
      appBar: AppBar(
        title: Text('Выбор предмета'),
        backgroundColor: appbar,
        ),
        drawer: MainDrawer(),
        body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,

          children: [

          Padding(padding: new EdgeInsets.symmetric(vertical: 10.0),
            child:
              Align(alignment: Alignment.center,
                child: Text('Выбери предмет',
                style: TextStyle(fontSize: 25))
            )
          ),

          Expanded(
            child:
              Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
                child:
                  FlatButton(
                    onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => PhysicsClasses()),);
                      },
                    child: Text('Физика'),
                    color: buttons,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                )
             )
          ),

          Expanded(
            child:
              Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
                child:
                  FlatButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => ChemistryClasses()),);
                  },
                    child: Text('Химия'),
                    color: buttons,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              )
            )
          ),

          Expanded(
            child:
              Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
                child:
                  FlatButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => AlgebraClasses()),);
                  },
                    child: Text('Алгебра'),
                    color: buttons,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              )
            )
          ),

          Expanded(
            child:
              Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
                child:
                  FlatButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => IctClasses()),);
                  },
                    child: Text('Информатика'),
                    color: buttons,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              )
            )
          ),

          Expanded(
            child:
              Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
                child:
                  FlatButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => GeometryClasses()),);
                  },
                    child: Text('Геометрия'),
                    color: buttons,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              )
            )
          ),

          Expanded(
            child:
              Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
                child:
                  FlatButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => GeographyClasses()),);
                  },
                    child: Text('География'),
                    color: buttons,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              )
            )
          ),

          Expanded(child:
            Padding(padding: new EdgeInsets.symmetric(vertical: 5.0),
              child:
                FlatButton(onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => SocsClasses()),);
                },
                  child: Text('Обществознание'),
                  color: buttons,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                )//я
              )//ебал
            )//создателя
          ] //этого
        )//ебучего
      )//уебищного
    );//синтаксиса
  } //ебучего
} //dart'a





var cs;
SharedPreferences sp;
start(){
  if (sp.getString('dark') != null){ // проверяем, задал ли юзер настройку цветовой темы
    // если задал, то проверяем  какую
    // проверка на темную тему
    if(sp.getString('dark') == 'yes'){
      cs = 'Выключить'; // переменная нужна для последующего использования в кнопе смены цветовой темы
      return ThemeData.dark(); // если юзер в прошлый раз поставил темную тему, то возвращаем ее
    }
    // проверка на светлую тему
    else{
      cs = 'Включить';// переменная нужна для последующего использования в кнопе смены цветовой темы
      return ThemeData.light();// если юзер в прошлый раз поставил светлую тему, то возвращаем ее
    }
  }
  // если юзер ничего не ставил(первый запуск прилрожения или почистил кеш, то возвращаем дефолтную тему, светлую
  else{
    cs = 'Включить';
    return ThemeData.light();
  }
}



void main() async
{
  WidgetsFlutterBinding.ensureInitialized();
  sp = await SharedPreferences.getInstance();
  print(start());

  runApp(
      new GetMaterialApp
        (
          theme:start(),
          debugShowCheckedModeBanner: false,
          title: 'FormulaK',
          home: SplashScreen()
        )
      );
}
