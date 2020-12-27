import 'package:flutter/material.dart';
import 'package:flutter_app/other/config.dart';



class ExpansionTileSample extends StatefulWidget {
  @override
  ExpansionTileSampleState createState() =>  ExpansionTileSampleState();
}
class ExpansionTileSampleState extends State<ExpansionTileSample> {
  String type = 'sin';
  Widget build(BuildContext context) {
      return  Container(child:

         ExpansionTile(
             key: GlobalKey(),
            title:  Text(this.type),

            children: <Widget>[
               ListTile(
                title:  Text('sin'),
                onTap: () {
                  cfg.types = 'sin';
                  print(cfg.types);
                  setState(() {
                    type = 'sin';
                  });
                },
              ),
               ListTile(
                title:  Text('cos'),
                onTap: () {
                  cfg.types = 'cos';
                  print(cfg.types);
                  setState(() {
                    type = 'cos';
                  });
                },
              ),
               ListTile(
                title:  Text('tg'),
                onTap: () {
                  cfg.types = 'tg';
                  print(cfg.types);
                  setState(() {
                    type = 'tg';
                  });
                },
              ),
            ]
        ),
      );
  }
}