import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Counter Application',
      home: CounterScreenState(),
    );
  }
}

class CounterScreenState extends StatefulWidget {
  @override
  _CounterScreenStateState createState() => _CounterScreenStateState();
}

class _CounterScreenStateState extends State<CounterScreenState> {
  int _count = 9999;
  bool pressAttention0 = false;
  bool pressAttention1 = false;
  bool pressAttention2 = false;

  void _incrementCount() {
    setState(() {
      _count++;
    });
  }

  void _decrementCount() {
    setState(() {
      _count--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App ITESO"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/iteso.JPG'),
          Row(
            children: [
              Text(
                "ITESO Universidad Jesuita de Guadalajara",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "San Pedro Tlaquepaque",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.thumb_up),
                iconSize: 40,
                onPressed: _incrementCount,
              ),
              IconButton(
                icon: Icon(Icons.thumb_down),
                onPressed: _decrementCount,
                iconSize: 40,
              ),
              Text("$_count"),
            ],
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.mail),
                    iconSize: 50,
                    color: pressAttention0 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        pressAttention0 = !pressAttention0;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Correo"),
                          duration: Duration(milliseconds: 500)));
                    },
                  ),
                  Text("Correo")
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.add_ic_call_rounded),
                    iconSize: 50,
                    color: pressAttention1 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        pressAttention1 = !pressAttention1;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Llamada"),
                          duration: Duration(milliseconds: 500)));
                    },
                  ),
                  Text("Llamada")
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Column(
                children: [
                  IconButton(
                    icon: Icon(Icons.directions_outlined),
                    iconSize: 50,
                    color: pressAttention2 ? Colors.blue : Colors.black,
                    onPressed: () {
                      setState(() {
                        pressAttention2 = !pressAttention2;
                      });

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text("Ruta"),
                          duration: Duration(milliseconds: 500)));
                    },
                  ),
                  Text("Ruta")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "El ITESO, Universidad Jesuita de Guadalajara, es una universidad privada ubicada en la Zona Metropolitana de Guadalajara, Jalisco,Mexico, fundada en el ano 1957. La institucion forma parte del Sistema Universitario Jesuita que integra a ocho universidades en Mexico. Fundada en el ano de 1957 por el ingeniero Jose Fernandez del Valle y Ancira, entre otros, la universidad ha tenido una larga trayectoria. A contiuacion se presenta la historia de la institucion en periodos de decadas",
            style: TextStyle(
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
