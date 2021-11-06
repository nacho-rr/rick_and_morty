import 'package:flutter/material.dart';

class CharacterItem extends StatelessWidget {
  const CharacterItem({Key? key, required this.character}) : super(key: key);

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 4, left: 4),
      child: Container(
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(),
          borderRadius: BorderRadius.circular(4)
        ),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                character.image,
                width: 125
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Text(
                  character.name,
                  style: const TextStyle(fontSize: 20),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              )
            )
          ],
        )
      ),
    );
  }
}

class Character {
  int id;
  String name;
  String image;

  Character({required this.id, required this.name, required this.image });
}