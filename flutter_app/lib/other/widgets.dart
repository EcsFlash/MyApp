import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_tex/flutter_tex.dart';
import 'package:flutter_app/other/config.dart';
import 'package:get/get.dart';
import 'package:flutter_app/other/builds.dart';



Widget MyAppBar({String title}){
  return AppBar(
      title:
        Text(title),
      backgroundColor: appbar
  );
}

Widget CenterLabel({String text}){
  return Padding(padding: EdgeInsets.symmetric(horizontal: Paddings.topic_title_p),
    child:
    Padding(padding: EdgeInsets.symmetric(vertical: 15),
        child:
        Text(text,
          style: TextStyles.just_topic_text,
          textAlign: TextAlign.center,
        )
    ),
  );
}

Widget TopicTitle({String title}) {
  return Padding(padding: EdgeInsets.all(Paddings.topic_title_p),
      child:
      Text(title,
          style: TextStyles.topic_title_2_3line,
          textAlign: TextAlign.center
      )
  );
}

Widget TopicText({String text}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 15.0),
    child:
    Text(text,
      style: TextStyles.just_topic_text,
      textAlign: TextAlign.left,
    ),
  );
}

Widget Formula({String formula}) {
  var back;
  var cont;
  if (Get.isDarkMode) {
    back = Color.fromARGB(100, 48, 48, 48);
    cont = Colors.white;
  }
  else {
    back = Color.fromARGB(100, 250, 250, 250);
    cont = Colors.black;
  }
  return TeXView(
      loadingWidgetBuilder: (context) => Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
         CircularProgressIndicator(backgroundColor: Colors.purple, valueColor: AlwaysStoppedAnimation<Color>(Colors.white),),
         Text('секундочку...', style: TextStyle(color: Colors.blue))
       ],
      ),
     ),
      renderingEngine: TeXViewRenderingEngine.katex(),
      style: TeXViewStyle(
          backgroundColor: back
      ),
      child:
      TeXViewDocument(formula,
          style: TeXViewStyle(
              backgroundColor: back,
              contentColor: cont
          )
      )
  );
}

Widget FormulaExplanation({String text}) {
  return Padding(padding: EdgeInsets.symmetric(horizontal: 20),
      child:
      Padding(padding: EdgeInsets.only(bottom: 10.0),
          child:
          Text(text,
            style:
              TextStyles.formula_explanations,
              textAlign: TextAlign.center,
          )
      )
  );
}

Widget ThemeButton({context,text,way}) {
  return Padding(padding: EdgeInsets.symmetric(vertical: 6.0),
    child:
      FlatButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => way),);
        },
        child: Text(text),
        height: 70,
        color: buttons,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    ),
  );
}

