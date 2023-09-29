import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key, required this.id});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          decoration: BoxDecoration(
              color: Colors.teal,
              image: DecorationImage(
                image: NetworkImage(
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/$id.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(12.0)),
          child: const Align(
            alignment: Alignment.bottomCenter,
            child: Text('data'),
          )),
    );
  }
}
