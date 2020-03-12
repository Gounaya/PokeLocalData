import 'package:dio_app/ui/pages/pokemonDetail.dart';
import 'package:dio_app/ui/pages/pokemonList.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MainApp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      //defines the available named routes and the widgets to build when navigating to those routes
      routes: <String, WidgetBuilder>{
        PokemonList.routeName: (BuildContext context) => PokemonList(),
        PokemonDetail.routeName: (BuildContext context) => PokemonDetail()
      },

      home: PokemonList(),
    );
  }
}
