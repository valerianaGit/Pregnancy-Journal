import 'package:flutter/material.dart';
import 'widgets/journal_cards.dart';
import 'package:pregnancy_journal/journal_entry_screen.dart';

class MyHomePage extends StatelessWidget {
  final List<JournalCard> cardList = [
    JournalCard(),
    JournalCard(),
    JournalCard()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pregancy Journal'),
      ),
      body:
          //  Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          SafeArea(
        child: ListView(
          children: cardList,
          // [
          //   //Create cards tiles
          //   SizedBox(height: 50),
          //  cardList,
          // ],
        ),
      ),
      // ],
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => JournalEntryScreen(),
            ),
          );
        },
        tooltip: 'New entry',
        child: const Icon(Icons.add),
      ),
    );
  }
}
