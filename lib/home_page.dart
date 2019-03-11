import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'map_page.dart';

class _HomePageActs extends StatelessWidget {
  Widget build(BuildContext context) {
    return FlatButton(
      child: Icon(Icons.edit),
      onPressed: () => Scaffold.of(context).showSnackBar(SnackBar(content: Text('Você clicou no botão que não faz nada') ) ) 
    );
  }
}

class HomePage extends StatelessWidget {
  final Completer<GoogleMapController> _controller = Completer();

  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Home'),
          actions: <Widget>[
            _HomePageActs()
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(text: 'Um'),
              Tab(icon: Icon(Icons.location_on)),
              Tab(text: 'Três'),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          color: Theme.of(context).backgroundColor,
          child: TabBar(
            tabs: <Widget>[
              Tab(text: 'Um'),
              Tab(icon: Icon(Icons.location_on)),
              Tab(text: 'Três'),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Text('Primeira tela'),
            ),
            Center(
              child: RaisedButton(
                child: Text('Abrir mapa'),
                color: Theme.of(context).primaryColor,
                textColor: Colors.white,
                elevation: 10,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute( builder: (ctx) => MapPage() ));
                },
              ),
            ),
            Center(
              child: Text('Terceira tela'),
            ),
          ]
        ),
      ),
    );
  }

}
