import 'package:flutter/cupertino.dart';
import 'dart:collection';
import 'journal_entry.dart';
import 'package:pregnancy_journal/widgets/journal_cards.dart';
import 'package:pregnancy_journal/models/journal_entry.dart';

class JournalEntryData extends ChangeNotifier {
  final List<JournalCard> _cardList = [
    JournalCard(content: 'hello', date: DateTime.now()),
    JournalCard(content: 'hellous', date: DateTime.now()),
    JournalCard(content: 'cgytrhello', date: DateTime.now())
  ];

  UnmodifiableListView<JournalCard> get cardList {
    return UnmodifiableListView(_cardList);
  }

  int get cardCount {
    return _cardList.length;
  }

  //TODO: - Find out how to fomrat the dateTime , so it only shows the date

  void addAnotherEntry(String entryString) {
    //JournalEntry newEntry = JournalEntry(content: entryString);
    JournalCard newCard =
        JournalCard(content: entryString, date: DateTime.now());
    _cardList.add(newCard);
    print(_cardList);
    notifyListeners();
  }
}
