
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        actions: [

        ],
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 30) ,
          child: Column(
            children: [
              Padding(
                padding:  EdgeInsets.only(top: 5, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      hintText: 'Digite seu nome compelto'
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 30, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      hintText: 'Digite seu e-mail'
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 20, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      hintText: 'Digite seu cpf'
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 30, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      hintText: 'Digite sua data nascimento'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      hintText: 'Digite seu celular'
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
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
                    child: Text('proximo'.toUpperCase(),
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