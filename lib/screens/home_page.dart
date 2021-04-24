import 'package:flutter/material.dart';
import 'package:pregnancy_journal/screens/journal_entry_screen.dart';
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
