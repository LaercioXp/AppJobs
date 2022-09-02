import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget{
  final  onHomeClick;
  const LoginPage({Key? key,  this.onHomeClick}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //   title: Text("Login"),
      // ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Container(
                  width: MediaQuery.of(context).size.width,
                  height:MediaQuery.of(context).size.height / 2.2,
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
                          child: Text('Serviços', style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 25
                          )),
                        ),
                      )
                    ],
                  )
              ),

              Container(
                padding: EdgeInsets.only(top: 62),
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      padding: EdgeInsets.only(
                          top: 4,
                          left: 16,
                          right: 16,
                          bottom: 4
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 4
                          )
                          ]
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                            icon: Icon(Icons.person, color: Colors.black,),
                            hintText: 'E-mail'
                        ),
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width / 1.2,
                      height: 50,
                      margin: EdgeInsets.only(top: 32),
                      padding: EdgeInsets.only(
                          top: 4,
                          left: 16,
                          right: 16,
                          bottom: 4
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                              Radius.circular(50)
                          ),
                          color: Colors.white,
                          boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5
                          )
                          ]
                      ),
                      child: TextField(
                        obscureText: true,
                        autocorrect: false,
                        enableSuggestions: false,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(borderSide: BorderSide.none),
                            icon: Icon(Icons.vpn_key, color: Colors.black,),
                            hintText: 'Senha'
                        ),
                      ),
                    ),
                  ],
                ),
              ),


              Container(
                width: MediaQuery.of(context).size.width / 1.2,
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
                  onTap: () => {
                    onHomeClick(),
                  },
                  child: Center(
                    child: Text('Login'.toUpperCase(),
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