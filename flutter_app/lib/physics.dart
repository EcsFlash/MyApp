import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/physics/physics9.dart';
import 'package:flutter_app/other/config.dart';
import 'package:flutter_app/screens.dart';
import 'package:liquid_engine/liquid_engine.dart';

class PhysicsClasses extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Физика'),
          backgroundColor: appbar,
        ),
        body: Container(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  Padding(padding: EdgeInsets.symmetric(vertical: 20.0),
                      child:
                      Align(alignment: Alignment.center,
                          child:
                          Text('Выбери класс',
                              style: TextStyle(fontSize: 25))
                      )
                  ),

                  Expanded(child:
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                    child:
                    FlatButton(onPressed: (){},
                      child: Text('6 класс'),
                      color: buttons,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                  ),

                  Expanded(child:
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                    child:
                    FlatButton(onPressed: (){},
                      child: Text('7 класс'),
                      color: buttons,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                  ),

                  Expanded(child:
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                    child:
                    FlatButton(onPressed: (){},
                      child: Text('8 класс'),
                      color: buttons,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                  ),

                  Expanded(child:
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                    child:
                    FlatButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context) => PhysicsClasses9Themes()),);
                    },
                      child: Text('9 класс'),
                      color: buttons,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                  ),

                  Expanded(child:
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                    child:
                    FlatButton(onPressed: (){},
                      child: Text('10 класс'),
                      color: buttons,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                  ),

                  Expanded(child:
                  Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                    child:
                    FlatButton(onPressed: (){},
                      child: Text('11 класс'),
                      color: buttons
                      ,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                    ),
                  )
                  )
                ]//children
            )
        )
    );
  }
}

class PhysicsClasses9Themes extends StatelessWidget{
  Widget build(BuildContext context){

    return Scaffold(
      appBar:
        AppBar(
          title:
            Text('Физика 9 класс'),
          backgroundColor: appbar
        ),
      body:
        ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          children: [

            Padding(padding: EdgeInsets.symmetric(vertical: 15.0),
              child:
                Align(alignment: Alignment.center,
                  child:
                    Text('Выбери тему',
                      style: TextStyle(fontSize: 25))
              )
            ),

            Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
              child:
                FlatButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => theme(data: Physics9.Displacement_in_rectilinear_uniform_motion)));
                },
                child: Align(alignment: Alignment.center,
                    child:
                    Text('''Перемещение при прямолинейном \n равномерном движении''',
                      textAlign: TextAlign.center,)
                  ),
                color: buttons,
                height: 65,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),



          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:(context) => theme(data: Physics9.Rectilinear_uniformly_accelerated_motion )));
              },
                child:
                  Text(
                    '''Прямолинейное равноускоренное \n движение.Ускорение.''',
                    textAlign: TextAlign.center
                  ),
                color: buttons,
                height: 65,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),



          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => theme(data: Physics9.Body_movement_in_rectilinear_uniformly_accelerated_motion_without_initial_velocity)));
              },
                child: Text(''' Перемещение при ПРД \n без начальной скорости.''',
                    textAlign: TextAlign.center),
                height: 65,
                color: buttons,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),

          

          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){},
                child: Text('Тема А'),
                height: 65,
                color: buttons,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){},
                child: Text('тема б'),
                height: 65,
                color: buttons,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),


          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){},
                child: Text('Тема А'),
                height: 65,
                color: buttons,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){},
                child: Text('Тема А'),
                height: 65,
                color: buttons,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),


          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){},
                child: Text('Тема А'),
                height: 65,
                color: buttons,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),

          Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
            child:
              FlatButton(onPressed: (){},
                child: Text('Тема А'),
                color: buttons,
                height: 65,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
              ),
          ),


          Padding(padding: EdgeInsets.only(bottom: 25.0),
            child:
              Padding(padding: EdgeInsets.only(top: 6.0),
                child:
                  FlatButton(onPressed: (){},
                    child: Text('Тема А'),
                    color: buttons,
                    height: 65,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  ),
              )
          )
        ]
      )
    );
  }
}


