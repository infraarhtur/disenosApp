import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                
                _titulos(),
                _botonesredondeados()
              
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar:_bottomNaigationBar(context)
    );
  }

  Widget _fondoApp() {
    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: FractionalOffset(0.0, 0.6),
              end: FractionalOffset(0.0, 1.0),
              colors: [
            Color.fromRGBO(52, 54, 101, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ])),
    );

    final cajaRosada = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80.0),
            gradient: LinearGradient(colors: [
              Color.fromRGBO(236, 98, 188, 1.0),
              Color.fromRGBO(241, 142, 172, 1.0),
            ])),
      ),
    );

    return Stack(
      children: <Widget>[gradiente, Positioned(top: -100.0, child: cajaRosada)],
    );
  }

  Widget _titulos() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'clasify transaccion',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('clasify this transaccion into particular categoria',
                style: TextStyle(color: Colors.white, fontSize: 20.0)),
          ],
        ),
      ),
    );
  }

Widget _bottomNaigationBar(BuildContext context ){

  return new Theme(
    data: Theme.of(context).copyWith(
canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
primaryColor: Colors.pinkAccent,
textTheme: Theme.of(context).textTheme.copyWith(
  caption: TextStyle(color: Color.fromRGBO(116, 117, 150, 1.0))
)
    ),
   child: BottomNavigationBar(
     items: [
       BottomNavigationBarItem(
         icon: Icon(Icons.calendar_today,size:30.0),  title:  Container()
         ),
          BottomNavigationBarItem(
         icon: Icon(Icons.supervised_user_circle,size:30.0), title:  Container()
         ),
          BottomNavigationBarItem(
         icon: Icon(Icons.bubble_chart,size:30.0), title:  Container()
         ),
     ],
   ));
}

Widget  _botonesredondeados(){

  return Table(
    children: [
      TableRow(
        children: [
          _crearBottonRedondeado(Colors.blue, Icons.border_all, 'General' ),
           _crearBottonRedondeado(Colors.purpleAccent, Icons.event_busy, 'busy' ),
        ]
      ),
         TableRow(
        children: [
           _crearBottonRedondeado(Colors.orange, Icons.directions_walk, 'General' ),
            _crearBottonRedondeado(Colors.cyan, Icons.flash_auto, 'Auto' ),
        ]
      ),
       TableRow(
        children: [
           _crearBottonRedondeado(Colors.lightBlue, Icons.g_translate, 'General' ),
            _crearBottonRedondeado(Colors.lightGreenAccent, Icons.directions_bike, 'Bike' ),
        ]
      ),
       TableRow(
        children: [
           _crearBottonRedondeado(Colors.red, Icons.extension, 'General' ),
            _crearBottonRedondeado(Colors.blueAccent, Icons.face, 'Bike' ),
        ]
      ),
       TableRow(
        children: [
           _crearBottonRedondeado(Colors.greenAccent, Icons.feedback, 'General' ),
            _crearBottonRedondeado(Colors.tealAccent, Icons.filter_vintage, 'Bike' ),
        ]
      )
    ],
  );
}


Widget _crearBottonRedondeado( Color color, IconData icono , String texto){
  return ClipRect(
      child: BackdropFilter(
      filter:ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0) ,
        child: Container(
        height: 180.0,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
         color:Color.fromRGBO(62, 66, 107, 0.7) ,
         borderRadius: BorderRadius.circular(20.0)
        ),

child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        CircleAvatar(
          backgroundColor: color,
          radius: 35.0,
          child: Icon(icono, color:Colors.white, size: 30.0),
        ),
        Text(texto, style:TextStyle(color:color)),
        SizedBox(height: 5.0,)
      ],
),
      ),
    ),
  );
}

}
