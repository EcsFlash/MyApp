import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_app/other/drawer.dart';
import 'package:flutter_app/other/widgets.dart';
import 'package:flutter_app/y.dart';
import 'package:get/get.dart';
import 'package:charcode/charcode.dart';

import 'other/config.dart';

class tes extends GetxController {
  static tes get to => Get.find();
  int counter = 0;
  String error = '';
  String MyError = 'Введенный градус должен быть в диапазоне от 0 до 180.';
  int degr = 0;
  int d = 0;
  double sn = 0.0;
  double cs = 0.0;
  double tg = 0;
  double ctg = 0;
  double r = 0.0;



  void up_grad(degree) {
    degr = degree;
    d = degree;
    if (degr > 180 || degr < 0) {
      d = 0;
      error = MyError;
    }
    else {
      error = '';
    }
    update();
  }

  void mat_grad() {
    if (degr > 180) {
      sn = 0.0;
      cs = 0.0;
      tg = 0.0;
      ctg = 0.0;
    }
    else {
      if (degr == 0 || degr == 180) {
        ctg = 0.0;
      }
      if (degr == 90) {
        tg = 0.0;
      }
      else {
        r = (pi / 180) * degr;
        sn = sin(r);
        cs = cos(r);
        tg = sn / cs;
        ctg = cs / sn;
      }
    }
  }
}
class val_to_dergee extends GetxController{
  static val_to_dergee get to => Get.find();
  double value = 0;
  double sn_v = 0.0;
  double cs_v = 0.0;
  double degree =0;
  double tg_v = 0;
  double ctg_v = 0;
  void up_value(value,change) {
    if (change == 'sin'){
      sn_v = value;
      cs_v = sqrt(1 - pow(sn_v,2));
      tg_v = sn_v / cs_v;
      ctg_v = cs_v /sn_v ;
      degree = (180 * asin(sn_v)) / pi;
    }
    if (change == 'cos'){
      cs_v = value;
      sn_v = sqrt(1 - pow(cs_v,2));
      tg_v = sn_v / cs_v;
      ctg_v = cs_v /sn_v ;
      degree = (180 * acos(cs_v)) / pi;
    }
    if (change == 'tg'){
      tg_v = value;
    }

    update();
  }

}
// On your Stateless/Stateful class, use GetBuilder to update Text when increment be called

class Tabs extends StatelessWidget{
  TextEditingController somecontroller1 = new TextEditingController();
  TextEditingController somecontroller2 = new TextEditingController();
  Widget build(BuildContext context){
final c1 = Get.put(val_to_dergee());
final c2 = Get.put(tes());

    final _kTabPages =<Widget>[
      Column(
          children:
          [
            Padding(padding: EdgeInsets.all(20.0),child:
            Text(
              'Вычисление по градусу',
              style: TextStyle(fontSize: 19,),
            ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child:
                Row(
                  children: [
                  Expanded(
                    child:
                      TextField(

                        controller: somecontroller1,
                        cursorColor: Colors.white,
                        maxLength: 3,
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.center,
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(0.0),
                          hintText: 'градус',
                          counterText: "",
                          focusedBorder:
                            OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              borderSide: BorderSide(color: Colors.white, width: 1.0,),
                            ),
                          enabledBorder:
                            OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(40)),
                              borderSide: BorderSide(color: Colors.grey, width: 1.0),
                            ),
                        ),
                        onSubmitted: (value){
                          print(value);
                        },
                    ),
        ),
                  Container(
                    width: 110,
                    height: 50,
                    child:
                      OutlineButton(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                        onPressed: (){
                          tes.to.up_grad(int.parse(somecontroller1.text));
                          tes.to.mat_grad();
                        },
                        child:
                          Text('Вычислить')
                      ),
                  ),
                 ]
            ),
      ),
      Padding(
        padding: EdgeInsets.all(20.0),
        child:
          Column(
            children: [

              GetBuilder<tes>(
              init: tes(), // INIT IT ONLY THE FIRST TIME
              builder: (_) => Text('${_.error}', style: TextStyle(fontSize: 18, color: Colors.red,), textAlign: TextAlign.center,),),
              GetBuilder<tes>(
                init: tes(), // INIT IT ONLY THE FIRST TIME
                builder: (_) => Text('sin(${_.d}) = ${_.sn.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
              ),
              GetBuilder<tes>(
                init: tes(), // INIT IT ONLY THE FIRST TIME
                builder: (_) => Text('cos(${_.d}) = ${_.cs.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
              ),

              GetBuilder<tes>(
                init: tes(), // INIT IT ONLY THE FIRST TIME
                builder: (_) => Text('tg(${_.d}) = ${_.tg.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
              )
            ]
          )
      )
  ]

  ),


ListView(children: [
      Column(

          children:
          [
            Text('Вычисление по значению'),
            ExpansionTileSample(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child:
                Row(
                  children: [

                    Expanded(
                      child:
                        TextField(
                          controller: somecontroller2,
                          cursorColor: Colors.white,
                          maxLength: 3,
                          maxLines: 1,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          decoration:
                            InputDecoration(
                              contentPadding: EdgeInsets.all(0.0),
                              hintText: 'значение',
                              counterText: "",
                              focusedBorder:
                                OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  borderSide: BorderSide(color: Colors.white, width: 1.0,),
                              ),
                              enabledBorder:
                                OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(40)),
                                  borderSide: BorderSide(color: Colors.grey, width: 1.0),
                                ),
                              ),
                              onSubmitted: (value){
                                print(value);
                              },
                          ),
              ),
                    Container(
                      width: 110,
                      height: 50,
                      child:
                      OutlineButton(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0),),
                          onPressed: (){
                            print(somecontroller2.text);
                            val_to_dergee.to.up_value(double.parse(somecontroller2.text),cfg.types);
                          },
                          child:
                          Text('Вычислить')
                      ),
                    ),
              ]
              ),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child:
                Column(
                    children: [
                      GetBuilder<val_to_dergee>(
                        init: val_to_dergee(), // INIT IT ONLY THE FIRST TIME
                        builder: (_) => Text('sin = ${_.sn_v.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
                      ),
                      GetBuilder<val_to_dergee>(
                        init: val_to_dergee(), // INIT IT ONLY THE FIRST TIME
                        builder: (_) => Text('cos = ${_.cs_v.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
                      ),
                      GetBuilder<val_to_dergee>(
                        init: val_to_dergee(), // INIT IT ONLY THE FIRST TIME
                        builder: (_) => Text('tg = ${_.tg_v.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
                      ),
                      GetBuilder<val_to_dergee>(
                        init: val_to_dergee(), // INIT IT ONLY THE FIRST TIME
                        builder: (_) => Text('ctg = ${_.ctg_v.toStringAsFixed(4)}', style: TextStyle(fontSize: 18),),
                      ),
                      GetBuilder<val_to_dergee>(
                        init: val_to_dergee(), // INIT IT ONLY THE FIRST TIME
                        builder: (_) => Text('Угол: ${_.degree.toStringAsFixed(1)} ${String.fromCharCode($deg)}', style: TextStyle(fontSize: 18),),
                      ),
                    ]
                )
            )
      ]
    )
  ]
)
  ];

    final _kTabs = <Widget>[
      Tab(text: 'по град',),
      Tab(text: 'по знач',)
    ];
    return 
      DefaultTabController(
        length: _kTabs.length, 
        child: 
          Scaffold(
            appBar: AppBar(title: Text('Вычисление sin, cos, tg, ctg'), backgroundColor: appbar, bottom: TabBar(indicatorColor: Colors.white,
                tabs: _kTabs),),
            body: TabBarView(children: _kTabPages,),
            
      )
      );
}
}