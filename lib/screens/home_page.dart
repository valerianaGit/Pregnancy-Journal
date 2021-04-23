import 'package:flutter/material.dart';
import '../widgets/journal_cards.dart';
import 'package:pregnancy_journal/screens/journal_entry_screen.dart';
import 'package:pregnancy_journal/models/journal_entry_data.dart';
import 'package:provider/provider.dart';
import 'package:pregnancy_journal/widgets/entries_list.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pregancy Journal'),
      ),
      body: SafeArea(
        child: EntriesList(),
        // ListView(
        //   children: Provider.of<JournalEntryData>(context).cardList,
        // ),
      ),
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
