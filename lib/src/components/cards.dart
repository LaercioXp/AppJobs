
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String titulo;
  final String subtitulo;
  final IconData icon;
  final Color color;
  const Cards({Key? key,required this.icon, required this.titulo, required this.subtitulo, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Card(
     child:Container(
        height: 70,
        color: color,
        child: Row(
          children: [
            Expanded(
              child: Icon(icon, size: 42),
              flex:2 ,
            ),
            Expanded(
              child:Column(
                children: [
                  Expanded(
                    flex: 5,
                    child: ListTile(
                      title: Text(titulo),
                      subtitle: Text(subtitulo),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          child:Text(""),
                          onPressed: ()
                          {},
                        ),
                        SizedBox(width: 8,),
                        TextButton(
                          child: Text(""),
                          onPressed: (){},
                        ),
                        SizedBox(width: 8,)
                      ],
                    ),
                  )
                ],
              ),
              flex:8 ,
            ),
          ],
        ),
      ),
      elevation: 8,
      margin: EdgeInsets.only(left: 6, right: 6, top: 2, bottom: 3),
    );
  }

}
