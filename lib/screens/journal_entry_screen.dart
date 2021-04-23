import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pregnancy_journal/models/journal_entry_data.dart';

class JournalEntryScreen extends StatelessWidget {
  String newContent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pregancy Journal'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Text(
                  'Feelings, desires, anything goes in this space'), //TODO: - create a style for these
              SizedBox(
                height: 50.0,
              ),
              Theme(
                data: ThemeData(
                    primaryColor: Colors.teal, primaryColorDark: Colors.teal),
                child: TextField(
                  maxLines: null, //wrap text to be able to read it all
                  autofocus: true,
                  autocorrect: true,
                  cursorColor: Colors.purple[900],
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Notes and Thoughts',
                  ),
                  onChanged: (newValue) {
                    newContent = newValue;
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Provider.of<JournalEntryData>(context, listen: false)
              .addAnotherEntry(newContent);
          Navigator.pop(context);
        },
        tooltip: 'Done Editing',
        child: const Icon(Icons.check),
      ),
    );
  }
}
