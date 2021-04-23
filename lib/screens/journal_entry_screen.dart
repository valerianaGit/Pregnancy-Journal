import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:pregnancy_journal/models/journal_entry_data.dart';
import 'package:pregnancy_journal/constants/constants.dart';

class JournalEntryScreen extends StatelessWidget {
  String newContent;
  final String incomingText;
  JournalEntryScreen({this.incomingText});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              SizedBox(
                height: 50.0,
              ),
              Text('Feelings, desires, anything goes in this space',
                  style: ktitleTextStyle), //TODO: - create a style for these
              SizedBox(
                height: 50.0,
              ),
              Theme(
                data: ThemeData(
                    primaryColor: Colors.teal, primaryColorDark: Colors.teal),
                child: getWidget(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          toPressOrNotToPress(context);
        },
        tooltip: 'Done Editing',
        child: const Icon(Icons.check),
      ),
    );
  }

  Widget getWidget() {
    if (incomingText == null) {
      return Expanded(
        //makes textfield scrollable - wrap in Expanded widget + maxlines = null
        child: TextField(
          maxLines: null, //wrap text
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
      );
    } else {
      return Expanded(
        child: SingleChildScrollView(
          //scrollable Text - > wrap in SingleChildScrollView -> wrap that in Expanded
          child: Text(
            '$incomingText',
            overflow: TextOverflow.visible,
          ),
        ),
      );
    }
  }

  void toPressOrNotToPress(BuildContext context) {
    if (incomingText == null) {
      Provider.of<JournalEntryData>(context, listen: false)
          .addAnotherEntry(newContent);
      Navigator.pop(context);
    } else {
      Navigator.pop(context);
    }
  }
}
