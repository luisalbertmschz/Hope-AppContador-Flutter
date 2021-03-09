


import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {


  final TextStyle estilotexto = new TextStyle(fontSize:25,color: Colors.blueGrey, );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(
       
       title: Text('🕊　Ｈｏｐｅ'),

       centerTitle: true,
       
        ),

        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

               Text('Boletos Comprados:', style: estilotexto),
               Text('🎫 20 ', style: estilotexto, )

            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Añadir Boleto x1')
          },
          child: Icon( Icons.confirmation_num),
        ) ,

    );
  }

}