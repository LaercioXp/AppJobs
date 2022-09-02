import 'package:flutter/material.dart';

class RecuperarSenhaPage extends StatefulWidget{
  @override
  State<RecuperarSenhaPage> createState() => _RecuperarSenhaPageState();
 }

class _RecuperarSenhaPageState extends State<RecuperarSenhaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conta Recebimento"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15, top: 35, right: 15),
                child: Container(
                  child: Icon(Icons.key_sharp, size: 60),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 5, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(child: Text("Agência")),
                            WidgetSpan(child: Text("*"), style: TextStyle(color: Colors.red) )
                          ]
                      )),
                      hintText: ''
                  ),
                ),
              ),

              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                transformAlignment: Alignment.bottomCenter,
                height: 50,
                margin: EdgeInsets.only(top: 32),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                        Radius.circular(50)
                    ),
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFf45d27),
                          Color(0xFFf5851f)
                        ]
                    )
                ),
                child: InkWell(
                  splashColor: Colors.white,
                  borderRadius: BorderRadius.all(
                      Radius.circular(50)
                  ),
                  onTap: () => {},
                  child: Center(
                    child: Text('Confirmar'.toUpperCase(),
                      style:TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}