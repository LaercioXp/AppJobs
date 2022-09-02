import 'package:flutter/material.dart';

class ContaBancariaPage extends StatefulWidget{
  final  onHomeClick;
   ContaBancariaPage({super.key, required this.onHomeClick});
  @override
  State<ContaBancariaPage> createState() => _ContaBancariaPageState();
  var bancos = ["Caixa Economica","Santander","Bradesco","Itau"];
  var bancoSelecionado = "Bradesco";
  var informacaoConta = "Cadastre sua conta para receber os pagamentos da realização de seus serviços.";
}

class _ContaBancariaPageState extends State<ContaBancariaPage> {

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
                 child: Icon(Icons.account_balance, size: 60),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
               child: Container(
                 child: Text(widget.informacaoConta,
                 textAlign: TextAlign.center,
                 style: TextStyle(
                   fontSize: 18,
                   fontWeight: FontWeight.bold,
                   fontStyle: FontStyle.normal,
                 )),
               ),
             ),
             Padding(
               padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
               child: Container(
                 child: DropdownButton(
                   isExpanded: true,
                   underline: Container(),
                   value: widget.bancoSelecionado,
                   hint: Text('Selecione um banco'),
                   onChanged: (String? newValue) {
                     setState(() {
                       widget.bancoSelecionado = newValue!;
                     });
                   },
                   items: widget.bancos.map((String items){
                     return DropdownMenuItem(
                       value: items,
                       child: Text(items),
                     );
                   }).toList(),
                 ),
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
             Padding(
               padding:  EdgeInsets.only(top: 5, left: 15, right: 15 ),
               child: TextField(
                 textInputAction: TextInputAction.none,
                 decoration: InputDecoration(
                     label: Text.rich(TextSpan(
                         children: <InlineSpan>[
                           WidgetSpan(child: Text("Número da Conta")),
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