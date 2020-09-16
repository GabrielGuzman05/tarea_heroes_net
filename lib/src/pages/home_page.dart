import 'package:flutter/material.dart';

import 'package:tarea_heroes_net/src/utils/connected.dart';
import 'package:tarea_heroes_net/src/services/test_service.dart';
import 'package:tarea_heroes_net/src/models/mis_heroes_model.dart';
import 'package:tarea_heroes_net/src/utils/json_icon_util.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MisHeroesModel heroes = MisHeroesModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heroes Online'),
      ),
      body: Container(
        child: listarHeroes(),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'btnList',
            backgroundColor: Colors.blue[900],
            child: Icon(Icons.sync),
            onPressed: (() => this.getList()),
          ),
        ],
      ),
    );
  }

  Widget listarHeroes() {
    if (this.heroes.heroes != null) {
      return Container(
          margin: EdgeInsets.only(bottom: 30),
          child: ListView(
            children: heroesListos(),
          ));
    }
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const ListTile(
            leading: Icon(Icons.info_outline),
            title: Text('Presiona el boton para cargar los heroes'),
          ),
        ])));
  }

  void getList() async {
    bool connectionAvailable = await Connected().isConnected();
    (connectionAvailable)
        ? this.heroes = await TestService().getLista()
        : print('No hay conexión');

    if (this.heroes != null) {
      setState(() {});
    }
  }

  List<Widget> heroesListos() {
    List<Widget> miLista = new List<Widget>();

    this.heroes.heroes.forEach((heroe) {
      Column temp = Column(
        children: <Widget>[
          ListTile(
            title: Text(heroe.nombre),
            subtitle: Text(heroe.poder),
            leading: getIcon(heroe.icon, heroe.color),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Divider()
        ],
      );

      miLista.add(temp);
    });
    return miLista;
  }
}
