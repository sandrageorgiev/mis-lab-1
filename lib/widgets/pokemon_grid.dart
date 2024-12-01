import 'package:flutter/material.dart';
import 'package:mis_lab_1/models/poke_model.dart';
import 'package:mis_lab_1/widgets/pokemon_card.dart';

class PokemonGrid extends StatefulWidget {
  final List<Pokemon> pokemon;
  const PokemonGrid({super.key, required this.pokemon});
  @override
  _PokemonGridState createState() => _PokemonGridState();
}

class _PokemonGridState extends State<PokemonGrid> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView.count(
      padding: const EdgeInsets.all(6),
      crossAxisCount: 2,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      semanticChildCount: 250,
      childAspectRatio: 200 / 244,
      physics: const BouncingScrollPhysics(),
      children: widget.pokemon
          .map(
            (pokemon) => PokemonCard(
                id: pokemon.id, name: pokemon.name, image: pokemon.img),
          )
          .toList(),
    );
  }
}
