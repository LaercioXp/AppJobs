
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget{
  final onPerfilClick;

  const HomePage({super.key, required this.onPerfilClick});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      // appBar: AppBar(
      //   title: Text("Serviços"),
      //   backgroundColor: Colors.orange,
      // ),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height / 5.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft:  Radius.circular(0),
                        bottomRight: Radius.circular(0)
                    )
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget> [
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 90, right: 20, bottom: 5),
                        child: ElevatedButton(
                          onPressed: () { onPerfilClick(); },
                          child: Icon(Icons.person_pin, size: 30),
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.transparent),
                              elevation: MaterialStateProperty.all(0)
                          ),
                        ),
                      ),
                    )
                  ],
                ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft:  Radius.circular(20),
                        topRight: Radius.circular(20)
                    )
                ),
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget> [
                    Container(
                      alignment:  Alignment.topLeft,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom:16,left: 30, right: 5, top: 12 ),
                              child: Text("Av Dom Pedro I - Bela Vista São Paulo",
                                style: TextStyle(
                                fontSize: 20,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    //Spacer(),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 50,
                      width: 320,
                      padding: EdgeInsets.only(
                          top: 4,
                          left: 16,
                          right: 16,
                          bottom: 4
                      ),
                        decoration: BoxDecoration(
                             borderRadius: BorderRadius.all(Radius.circular(50)),
                            color: Colors.white,
                            boxShadow: [BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5
                            )
                            ]
                        ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          decoration: InputDecoration(
                            icon: Icon(Icons.search_outlined),
                            hintText: 'Pesquisar por um serviço',
                            hintStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontStyle: FontStyle.italic,
                            ),
                            border: InputBorder.none,
                          ),
                          style: TextStyle(
                            color: Colors.black,
                          ),
                          ),
                      ),
                      ),

                  ],
                )
            ),

          ],
        ),
      ),


    );

  }

}