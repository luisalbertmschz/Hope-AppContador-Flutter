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

        floatingActionButton: _crearBotones()
        // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,


    );
  }


    Widget _crearBotones() {

      return Row(

      mainAxisAlignment: MainAxisAlignment.end,
         
      children:<Widget> [
          
      SizedBox(width: 30.0),    
      FloatingActionButton( onPressed:_resetcero,child: Icon(Icons.exposure_zero),),
      Expanded(child: SizedBox()),
      FloatingActionButton( onPressed:_decrementar,child: Icon(Icons.remove_circle),),
      SizedBox(width: 5.0),
      FloatingActionButton( onPressed:_agregar,child: Icon(Icons.add_circle),),
          
        ],

      );


    }


    void _agregar(){

      setState(() => _cantboleto++);

    }


    void _decrementar(){

      setState(() => _cantboleto--);

    }


    void _resetcero(){

      setState(() => _cantboleto=0);

    }


}
