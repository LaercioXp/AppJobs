import 'package:flutter/material.dart';
import 'package:jobs/src/components/profile_widget.dart';

class RegistrarAcessoPage extends StatefulWidget{
  @override
  State<RegistrarAcessoPage> createState() => _RegistrarAcessoPageState();
  var avatar =  "https://firebasestorage.googleapis.com/v0/b/message-b2251.appspot.com/o/imagens%2Fperfil%2FProfileFile.png?alt=media&token=c629f9e5-b7f2-481f-804a-7ae0342db96f";
}

class _RegistrarAcessoPageState extends State<RegistrarAcessoPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        actions: [

        ],
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15) ,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 30, top: 8),
                child: Container(
                  child: ProfileWidget(
                    onClick: () {

                    }, avatar: widget.avatar,
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 2, left: 15, right: 15 ),
                child: Column(
                  crossAxisAlignment:  CrossAxisAlignment.start,
                  children: [
                    Text("Foto do Documento", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    Text("RG, CNH, Carteira de Trabalho ou certificado de reservista")
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 10, left: 15, right: 15 ),
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Row(
                    children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 5),
                         child: ElevatedButton(
                           style: ButtonStyle(
                               backgroundColor: MaterialStateProperty.all(Colors.white12),
                             fixedSize: MaterialStateProperty.all(Size.square(75)),
                             shape: MaterialStateProperty.all(RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(10.0),
                             ),)
                           ),
                          onPressed: () {},
                          child: Icon(Icons.add),
                      ),
                       ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.white12),
                              fixedSize: MaterialStateProperty.all(Size.square(75)),
                              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),)
                          ),
                          onPressed: () {},
                          child: Icon(Icons.add),
                        ),
                      ),
                    ],
                  )
                ),
              ),

              Padding(
                padding:  EdgeInsets.only(top: 5, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(child: Text("senha")),
                            WidgetSpan(child: Text("*"), style: TextStyle(color: Colors.red) )
                          ]
                      )),
                      hintText: 'Digite sua senha'
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(top: 10, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(child: Text("Confirmar senha")),
                            WidgetSpan(child: Text("*"), style: TextStyle(color: Colors.red) )
                          ]
                      )),
                      hintText: 'Confirme sua senha'
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
                    child: Text('cadastrar'.toUpperCase(),
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