import 'package:flutter/material.dart';
import 'package:pokemon/modules/home_page/widget/card_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // final PokemonModels pokemonModels = PokemonModels();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pkedex"),
          backgroundColor: Colors.red,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return CardItem(id: index + 1);
              }),
        ),
      ),
    );
  }
}
