

import 'package:dio_app/data/model/Pokemon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PokemonDetail extends StatelessWidget {

  static const String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context).settings.arguments as Map;
    Pokemon pokemon = new Pokemon();
    (arguments != null)
        ? pokemon = arguments['pokemon']
        : pokemon = null;

    return Scaffold(
      appBar: AppBar(
        title: Text(pokemon.name),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: MediaQuery
                      .of(context)
                      .size
                      .height / 2,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width / 3,
                  child: Image(
                    image: AssetImage('${pokemon.image}'),
                  ),
                ),
                Text(pokemon.name),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.green,
                      child: Card(
                        child: Column(children: <Widget>[
                          Text('Height'),
                          Text(pokemon.height.toString()),
                        ]),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 100,
                      color: Colors.green,
                      child: Card(
                        child: Column(children: <Widget>[
                          Text('Weight'),
                          Text(pokemon.weight.toString()),
                        ]),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Card(
                    child: Container(
                      height: MediaQuery
                          .of(context)
                          .size
                          .height / 6,
                      width: MediaQuery
                          .of(context)
                          .size
                          .height / 3,
                      child: Center(child: Text(pokemon.description)),
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),

    );

  }

}