
import 'package:flutter/material.dart';

class RegistrarEnderecoPage extends StatefulWidget{
  @override
  State<RegistrarEnderecoPage> createState() => _RegistrarEnderecoPageState();

  var estados = ["SP","DF","RJ"];
  var cidades = ["Alvares Machado","Presidente Epitácio","Presidente Prudente","Caiabu","Indiana"];
  String cidadeSelecionada = 'Presidente Prudente';
  String estadoSelecionado = 'SP';
}

class _RegistrarEnderecoPageState extends State<RegistrarEnderecoPage> {
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
                padding:  EdgeInsets.only(top: 5, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                        children: <InlineSpan>[
                          WidgetSpan(child: Text("CEP")),
                          WidgetSpan(child: Text("*"), style: TextStyle(color: Colors.red) )
                        ]
                      )),
                      hintText: 'Digite seu cep'
                  ),
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 35,
                margin: EdgeInsets.only(top: 15),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  value: widget.estadoSelecionado,
                  hint: Text('Selecione seu estado'),
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.estadoSelecionado = newValue!;
                    });
                  },
                  items: widget.estados.map((String items){
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),

                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.1,
                height: 35,
                margin: EdgeInsets.only(top: 15),
                child: DropdownButton(
                  isExpanded: true,
                  underline: Container(),
                  value: widget.cidadeSelecionada,
                  hint: Text('Selecione sua cidade'),
                  onChanged: (String? newValue) {
                    setState(() {
                      widget.cidadeSelecionada = newValue!;
                    });
                  },
                      items: widget.cidades.map((String items){
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                    ),

              ),
              Padding(
                padding:  EdgeInsets.only(top: 10, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(child: Text("Logradouro")),
                            WidgetSpan(child: Text("*"), style: TextStyle(color: Colors.red) )
                          ]
                      )),
                      hintText: 'Informe sua rua'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(child: Text("Número")),
                            WidgetSpan(child: Text("*"), style: TextStyle(color: Colors.red) )
                          ]
                      )),
                      hintText: 'Informe o número de sua residência'
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, left: 15, right: 15 ),
                child: TextField(
                  textInputAction: TextInputAction.none,
                  decoration: InputDecoration(
                      label: Text.rich(TextSpan(
                          children: <InlineSpan>[
                            WidgetSpan(child: Text("Complemento")),
                          ]
                      )),
                      hintText: 'Digite um complemento'
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