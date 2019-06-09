import 'dart:io';
import 'package:flutter/material.dart';
import './Inicio.dart' as inicio;
import './Hitorial.dart' as historial;
import 'Escan.dart' as escan;
import 'Perfil.dart' as perfil;
import 'Configuracion.dart' as confguracion;
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(new MaterialApp(home: new MyTabs()));
}

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;



  @override
  void initState() {
    super.initState();
    controller = new TabController(vsync: this, length: 5);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(

          title: new Text(" Rostro Seguridad"),
          backgroundColor: Colors.blueAccent,
        ),
        bottomNavigationBar: new Material(
            color: Colors.blueAccent,
            child: new TabBar(controller: controller, tabs: <Tab>[
              new Tab(icon: new Icon(Icons.home)),
              new Tab(icon: new Icon(Icons.history)),
              new Tab(icon: new Icon(Icons.settings_overscan)),
              new Tab(icon: new Icon(Icons.perm_identity)),
              new Tab(icon: new Icon(Icons.settings)),
            ])),
        body: new TabBarView(controller: controller, children: <Widget>[
          new inicio.Inicio(),
          new historial.historial(),
          new escan.Escan(),
          new perfil.Perfil(),
          new confguracion.Conf()
        ]));
  }
}
