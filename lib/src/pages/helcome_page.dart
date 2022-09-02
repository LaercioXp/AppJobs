import 'package:flutter/material.dart';

class BemVindoPage extends StatelessWidget{
  final onRegisterClick;
  final onLoginClick;
  final onHomeClick;
  const BemVindoPage({Key? key, this.onRegisterClick, this.onLoginClick, this.onHomeClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   title: Text("Bem Vindo"),
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height / 2.0,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFFf45d27),
                          Color(0xFFf5851f)
                        ],
                      ),
                      borderRadius: BorderRadius.only(
                          bottomLeft:  Radius.circular(90)
                      )
                  ),
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Spacer(),
                      Align(
                        alignment:  Alignment.center,
                        child: Icon(Icons.person, size: 80,color: Colors.white,),
                      ),
                      Spacer(),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 32, bottom: 32),

                        ),
                      )
                    ],
                  )
              ),

              Container(
                padding: EdgeInsets.only(top: 20),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      padding: EdgeInsets.only(
                          top: 4,
                          left: 60,
                          right: 16,
                          bottom: 10
                      ),
                      child: Text('Seja Bem-Vindo (a)', style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25
                      )),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      margin: EdgeInsets.only(top: 62),
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
                        onTap: () => { onLoginClick(), },
                        child: Center(
                          child: Text('Login/Cadastro'.toUpperCase(),
                            style:TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () => { onHomeClick(), },
                      child: Container(
                        width: MediaQuery.of(context).size.width / 1.2,
                        height: 50,
                        margin: EdgeInsets.only(top: 32),
                        padding: EdgeInsets.only(
                            top: 4,
                            left: 70,
                            right: 16,
                            bottom: 4
                        ),
                        child: Text('Continar sem Login', style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        )),
                      ),
                    ),
                  ],
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}