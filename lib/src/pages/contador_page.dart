import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget{

// createState() {

// return _ContadorPageState();

// }
@override
createState() => _ContadorPageState();


}


class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _estilotexto = new TextStyle(fontSize:25,color: Colors.blueGrey, );

  int _cantboleto = 2 ;


  @override
  Widget build(BuildContext context) {
    return Scaffold(

     appBar: AppBar(

       title: Text('🕊　Ｈｏｐｅ '),

       centerTitle: true,

        ),

        body: Center(

          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,

            children: [

               Text('Boletos Comprados:', style: _estilotexto),
               Text('🎫 $_cantboleto', style: _estilotexto, )

            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print('Añadir Boleto x1');
            _cantboleto++;
            setState(() {
                          
                        });
          },
          child: Icon( Icons.confirmation_num),


        ),
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


    );
  }

}