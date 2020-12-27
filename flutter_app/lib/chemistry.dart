import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_app/chemistry/chemistry8.dart';
import 'package:flutter_app/chemistry/classthemes.dart';
import 'package:flutter_app/other/widgets.dart';
import 'package:flutter_app/other/builds.dart';
import 'package:flutter_app/other/config.dart';
import 'package:flutter_app/screens.dart';

class ChemistryClasses extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(
          title: Text('Химия'),
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
                    FlatButton(onPressed: (){
                      //Navigator.push(context, MaterialPageRoute(builder: (context) => ChemistryClassThemes(data: ,)),);
                    },
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
                    FlatButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ClassThemes(data: ChemistryThemes.chemistry8)));
                    },
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
                      color: buttons,
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








