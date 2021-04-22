import 'package:flutter/material.dart';

class JournalEntryScreen extends StatelessWidget {
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
                  'THIS WILL BE A PROMPT FOR JOURNALING, COMING FROM OUR data'), //TODO: - create a style for these
              SizedBox(
                height: 50.0,
              ),
              TextField(
                // style for text
                // //wrap text to be able to read it all
                maxLines: null,
                // // scrollable
                //
                autofocus: true,
                autocorrect: true,
                cursorColor: Colors.purple[900],
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'How are you feeling',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        tooltip: 'Done Editing',
        child: const Icon(Icons.check),
      ),
    );
  }
}
