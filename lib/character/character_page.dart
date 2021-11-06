import 'package:flutter/material.dart';

import './widget/character_item.dart';

class CharacterPage extends StatefulWidget {
  @override
  State<CharacterPage> createState() => _CharacterPageState();
}

class _CharacterPageState extends State<CharacterPage> {

  String _searchByName = '';

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();

  final List<Character> entries = <Character>[
    Character(id: 28, name: "Eli's Girlfriend", image: 'https://rickandmortyapi.com/api/character/avatar/111.jpeg'),
    Character(id: 28, name: "Eli's Girlfriend", image: 'https://rickandmortyapi.com/api/character/avatar/111.jpeg'),
    Character(id: 28, name: "Eli's Girlfriend", image: 'https://rickandmortyapi.com/api/character/avatar/111.jpeg'),
    Character(id: 28, name: "Eli's Girlfriend", image: 'https://rickandmortyapi.com/api/character/avatar/111.jpeg'),
    Character(id: 28, name: "Eli's Girlfriend", image: 'https://rickandmortyapi.com/api/character/avatar/111.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only( top: 12, left: 4, right: 4 ),
            child: TextField(
              controller: _nameController,
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                border: OutlineInputBorder(),
                hintText: 'Seach by type'
              ),
              onChanged: (String value) => setState(() {
                  _searchByName = value;
              }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only( top: 8, left: 4, right: 4 ),
            child: TextField(
              controller: _typeController,
              style: const TextStyle(fontSize: 18),
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 12),
                border: OutlineInputBorder(),
                hintText: 'Seach by type'
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: ElevatedButton(
              child: const Text('Search', style: TextStyle(fontSize: 18, color: Colors.white)),
              onPressed: () {
                print(_nameController.text);
              },
            )
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.only(bottom: 4),
              itemCount: entries.length,
              itemBuilder: (BuildContext context, int index) => CharacterItem(character: entries[index],),
              separatorBuilder: (BuildContext context ,int index) => const Divider(),
            )
          )
        ],
      ),
    );
  }
}