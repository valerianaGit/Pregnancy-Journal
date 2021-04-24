import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:pregnancy_journal/screens/journal_entry_screen.dart';
import 'package:pregnancy_journal/constants/constants.dart';

// create cards that will show up as a journal entry
// they have rounded corners
// has date and a color associated to a month
//

class JournalCard extends StatelessWidget {
  final String content;
  final DateTime date;

  JournalCard({this.content, this.date});
  //format dates 
//https://flutteragency.com/how-to-format-datetime-in-flutter/
  String dateFormatterToDateOnly(DateTime date) {
    return DateFormat('dd / MM-yyyy').format(date);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // send data to another screen
        // https://flutter.dev/docs/cookbook/navigation/passing-data
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => JournalEntryScreen(incomingText: content),
          ),
        );
      },
      child: Padding(
        padding:
            EdgeInsets.only(top: 16.0, bottom: 16.0, left: 16.0, right: 16.0),
        child: Card(
          elevation: 5,

          color: Colors.purple[
              100],

          child: Container(
            height: 50.0,
            alignment: Alignment.center,
            child: Text(
              dateFormatterToDateOnly(date),
              style: kcardTextStyle,
            ),
          ),
        ),
      ),
    );
  }
}
