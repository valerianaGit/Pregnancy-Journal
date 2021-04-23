import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pregnancy_journal/models/journal_entry_data.dart';
import 'package:pregnancy_journal/widgets/journal_cards.dart';

class EntriesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<JournalEntryData>(
      builder: (context, entryData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final entry = entryData.cardList[index];
            print('entry content ${entry.content}');
            print('entry date ${entry.date}');
            return JournalCard(
              content: entry.content,
              date: entry.date,
            );
          },
          itemCount: entryData.cardCount,
        );
      },
    );
  }
}
