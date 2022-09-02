import 'package:flutter/material.dart';
import 'package:jobs/src/components/cards.dart';

class PerfilPage extends StatefulWidget{
  @override
  State<PerfilPage> createState() => _PerfilPageState();
  var titulo = "Meu Plano";
  var subTitulo = "Atual: Plano Free";
  var icone = Icons.credit_card;
  var color = Colors.white;
  var imagem = "https://firebasestorage.googleapis.com/v0/b/message-b2251.appspot.com/o/imagens%2Fperfil%2FbWFyeWNvdGFAZ21haWwuY29t.jpeg?alt=media&token=dcdb37ee-18ce-4523-8158-6c2aa0b40d19";
  var nome = "Mary Ligia Leal";
  var email = "mary_ligia@gmail.com";
}

class _PerfilPageState extends State<PerfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Perfil"),
         backgroundColor: Colors.orange,
        actions: [
          ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                elevation: MaterialStateProperty.all(0)
            ),
            onPressed: () {  },
            child: Icon(Icons.settings, color: Colors.white),

          ),
        ],
      ),
       body: SingleChildScrollView(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment:  CrossAxisAlignment.start,
           children: [
            /* Padding(
               padding: const EdgeInsets.only(top: 20, left: 15, bottom: 20),
               child: Container(
                 child: Text("Meus Dados",
                   style: TextStyle(fontSize: 18),
                   textAlign: TextAlign.left,
                 ),
               ),
             ),*/
             Padding(
               padding: const EdgeInsets.only(top: 15, left: 5, right: 5, bottom:2),
               child: Container(
                 decoration: BoxDecoration(
                     color: Colors.orange,
                     borderRadius: BorderRadius.only(
                        topLeft:Radius.circular(15),
                         topRight: Radius.circular(15),
                         bottomLeft:  Radius.circular(15),
                         bottomRight: Radius.circular(15)
                     )
                 ),
                 child: Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(top: 5, left: 15, bottom:2),
                       child: Container(
                         width: 80,
                         height: 80,
                         decoration: BoxDecoration(
                           shape: BoxShape.circle,
                           image: DecorationImage(
                             fit: BoxFit.fill,
                             image: NetworkImage(widget.imagem)
                           )
                         ),
                       ),
                     ),
                     Column(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 5, left: 1, bottom:2),
                           child: Text(widget.nome,  style: TextStyle(
                               fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),),
                         ),
                         Padding(
                           padding: const EdgeInsets.only(top: 5, left: 25 , bottom:2),
                           child: Text(widget.email,style: TextStyle(fontSize: 16, color: Colors.white),),
                         ),

                       ],
                     ),
                     /*Padding(
                       padding: const EdgeInsets.only(top: 1, left: 25, bottom:40),
                       child: ElevatedButton(
                         style: ButtonStyle(
                           backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                           elevation: MaterialStateProperty.all(0)
                         ),
                         onPressed: () {  },
                         child: Icon(Icons.settings, color: Colors.black),

                       ),
                     )*/
                   ],
                 ),
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: widget.icone,
                   titulo: widget.titulo,
                   subtitulo: widget.subTitulo,
                   color: widget.color
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: Icons.date_range,
                   titulo: 'Minha Agenda',
                   subtitulo: '',
                   color: widget.color
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: Icons.chat_outlined,
                   titulo: 'Minhas Conversas',
                   subtitulo: '',
                   color: widget.color
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: Icons.article,
                   titulo: 'Meus Anúncios',
                   subtitulo: '',
                   color: widget.color
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: Icons.favorite,
                   titulo: 'Meus Favoritos',
                   subtitulo: '',
                   color: widget.color
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: Icons.monetization_on_outlined,
                   titulo: 'Conta de Recebimento',
                   subtitulo: '',
                   color: widget.color
               ),
             ),
             InkWell(
               onTap: (){
               },
               child: Cards(
                   icon: Icons.account_balance_wallet,
                   titulo: 'Formas Pagamento',
                   subtitulo: '',
                   color: widget.color
               ),
             ),
           ],
         ),
       ),
    );
  }
}