import 'package:flutter/material.dart';
import 'package:pregnancy_journal/models/journal_entry.dart';
import 'package:pregnancy_journal/models/journal_entry_data.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

// create cards that will show up as a journal entry
// they have rounded corners
// has date and a color associated to a month
//
//TODO: - MAKE CARDS TAPPABLE
class JournalCard extends StatelessWidget {
  final String content;
  final DateTime date;
  JournalCard({this.content, this.date});
//https://flutteragency.com/how-to-format-datetime-in-flutter/
  String dateFormatterToDateOnly(DateTime date) {
    return DateFormat('dd / MM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        //call back for going into on tap the card
        print('tapped card $content');
      },
      child: Padding(
        padding:
            EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
        child: Card(
          elevation: 5,

          color: Colors.purple[
              100], //TODO: POSSIBLY change to color shades of purple from 100 to 900 according to the month they are on

          child: Container(
            height: 50.0,
            alignment: Alignment.center,
            child: Text(
              dateFormatterToDateOnly(date),

              style: TextStyle(), //TODO: STYLE TEXT- IN constants
            ),
          ),
        ),
      ),
    );
  }
}
