import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
class SocsClasses extends StatelessWidget {
Widget build(BuildContext context) {
  return Scaffold(

      appBar: AppBar(title: Text('Обществознание')),
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
                    color: Colors.blue,
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
                    color: Colors.blue,
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
                    color: Colors.blue,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  ),
                )
                ),

                Expanded(child:
                Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
                  child:
                  FlatButton(onPressed: (){},
                    child: Text('9 класс'),
                    color: Colors.blue,
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
                    color: Colors.blue,
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
                    color: Colors.blue,
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