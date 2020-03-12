import 'package:dio_app/data/model/Pokemon.dart';
import 'package:dio_app/ui/pages/pokemonDetail.dart';
import 'package:flutter/material.dart';

class PokemonList extends StatefulWidget {

  static const String routeName = "/pokemons";

  List<Pokemon> pokemons = [
    new Pokemon(
        id: 1,
        name: "firast",
        type: "firstType",
        description: "test",
        height: 10.0,
        weight: 12.0,
        image: "assets/images/bobby.png"),
    new Pokemon(
        id: 2,
        name: "first",
        type: "firstType",
        description: "test",
        height: 10.0,
        weight: 12.0,
        image: "assets/images/electrik.png"),
    new Pokemon(
        id: 3,
        name: "first",
        type: "firstType",
        description: "test",
        height: 10.0,
        weight: 12.0,
        image: "assets/images/fire.png"),
    new Pokemon(
        id: 4,
        name: "firast",
        type: "firstType",
        description: "test",
        height: 10.0,
        weight: 12.0,
        image: "assets/images/plant.png"),
    new Pokemon(
        id: 5,
        name: "first",
        type: "firstType",
        description: "test",
        height: 10.0,
        weight: 12.0,
        image: "assets/images/power.jpg"),
    new Pokemon(
        id: 6,
        name: "first",
        type: "firstType",
        description: "test",
        height: 10.0,
        weight: 12.0,
        image: "assets/images/water.png"),
  ];

  @override
  _PokemonListState createState() => _PokemonListState();

}

class _PokemonListState extends State<PokemonList> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Pokemons"),
      ),
      body: ListView.separated(
            itemBuilder: (context, position){
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PokemonDetail.routeName,
                    arguments: {"pokemon": widget.pokemons[position]});
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,

                  children: <Widget>[
                    Container(
                      height: 100,
                      child: Image(
                        image: AssetImage("${widget.pokemons[position].image}"),
                      ),
                    ),
                    Text(
                      "#$position  ${widget.pokemons[position].name}",
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.navigate_next)
                  ],
                )
              );
            },
            separatorBuilder: (context, position) {
              return Divider();
              /*return Container(
                //margin: EdgeInsets.only(left: 3),
                height: 2,
                color: Colors.black,
                padding: EdgeInsets.only(top: 10),

              );*/
            },
            itemCount: widget.pokemons.length

        )
    );
  }

}